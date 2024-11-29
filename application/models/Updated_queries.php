<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Updated_queries extends CI_Model
{
	public function __construct()
	{
		// parent::__construct();
		$this->db->query("SET sql_mode = ''");
		$this->load->dbforge();
	}
	public function install_version($version)
	{
		$data = [];

		do {
			if ($version > 1.2 && $version < 2.4) {
				$new_version = 2.4;
				$data = ['st' => 3, "msg" => 'You have to update it from using YOUR_URL/update', 'version' => $new_version];
				break;
			}


			include APPPATH . "config/update_logs.php";


			$update_result = check_versions($version, $this);
			if ($update_result) {
				$data = $update_result;
				break;
			}



			if ($version < '3.2.4') {
				$new_version = '3.2.4';

				$addColumnQueries = [

					'users' => [
						'home_page_style' => "INT NOT NULL DEFAULT 1",
					],

					'restaurant_list' => [
						'iyzico_config' => "LONGTEXT NULL",
						'is_iyzico' => "INT NOT NULL DEFAULT 0",
						'iyzico_status' => "INT NOT NULL DEFAULT 0",
					],

					'settings' => [
						'iyzico_config' => "LONGTEXT NULL",
						'is_iyzico' => "INT NOT NULL DEFAULT 0",
						'iyzico_status' => "INT NOT NULL DEFAULT 0",
					],
				];


				$addColumn = $this->sql_command($addColumnQueries);


				$check_slug = $this->check_slug('iyzico', 'payment_method_list');
				if ($check_slug == 0) :
					$this->db->query('INSERT INTO payment_method_list(name,slug,active_slug,status_slug,status) VALUES ("Iyzico","iyzico","iyzico_status","is_iyzico",1)');
				endif;






				$keywords = ['iyzico', 'without_popular_feature_items', 'with_popular_feature_items'];
				$check_keywords = $this->check_keywords($keywords);
				if ($check_keywords == 0) :
					$this->db->query("INSERT INTO `language_data` (`keyword`, `type`, `details`, `english`) VALUES
						('iyzico','admin','Iyzico','Iyzico'),
						('without_popular_feature_items','admin','Without popular and feature items / old page','Without popular and feature items / old page'),
						('with_popular_feature_items','admin','With popular and feature items','With popular and feature items');");

				endif;


				if (isset($addColumn['st']) && $addColumn['st'] == 0) :
					$data = ["st" => 0, "msg" => $addColumn['msg'], 'version' => $new_version];
				else :

					$data = ['st' => 1, "msg" => 'Updated Successfully', 'version' => $new_version];
				endif;
			}


			/*----------------------------------------------
		  				VERSION END 
		  				----------------------------------------------*/
		} while ($version == NEW_VERSION);

		return $data;
	} //install_version


	/*----------------------------------------------
	  		ADD Fields SQL Comments
	  		----------------------------------------------*/
	public function sql_command($addColumnQueries = [])
	{
		if (!empty($addColumnQueries)) :
			try {
				foreach ($addColumnQueries as $tableName => $queryValue) {
					foreach ($queryValue as $fieldName => $attribute) {
						if ($this->checkExistFields($tableName, $fieldName) == 0) {
							$this->dbforge->add_column($tableName, $fieldName . ' ' . $attribute);;
						}
					}
				}
			} catch (Exception $e) {
				return ['st' => 0, 'msg' => $e->getMessage()];
			}


		endif;
	}


	public function add_user_permissions()
	{
		$permissionList = [
			'kds' => [
				'title' => 'KDS',
				'slug' => 'kds',
				'role' => 'user',
			],

			'reports' => [
				'title' => 'Reports',
				'slug' => 'reports',
				'role' => 'user',
			],

			'menu' => [
				'title' => 'Menu',
				'slug' => 'menu',
				'role' => 'user',
			],

			'affiliate' => [
				'title' => 'Affiliate',
				'slug' => 'affiliate',
				'role' => 'user',
			],


			'coupon' => [
				'title' => 'Coupon List',
				'slug' => 'coupon',
				'role' => 'user',
			],

			'customer' => [
				'title' => 'Customer List',
				'slug' => 'customer',
				'role' => 'user',
			],

			'pages' => [
				'title' => 'Page List',
				'slug' => 'pages',
				'role' => 'user',
			],
		];

		foreach ($permissionList as $key => $value) :
			$check_slug = $this->check_slug($key, 'permission_list');
			if ($check_slug == 0) :
				$data = [
					'title' => $value['title'],
					'slug' => $key,
					'status' => 1,
					'role' => $value['role'],
				];
				$this->db->insert('permission_list', $data);
			endif;
		endforeach;
	}


	public function indexNumbers()
	{

		$data = [
			'order_user_list' => ['uid', 'order_type', 'shop_id'],

			'users' => [
				"username",
				"account_type",
			],

			'order_item_list' => [
				"order_id",
				"shop_id",
				"item_id"
			],

			'staff_list' => [
				"uid",
				"shop_id"
			]
		];

		$this->makeIndex($data);
	}

	protected function makeIndex($data)
	{

		foreach ($data as  $tableName => $tableNameValue) :
			foreach ($tableNameValue as  $key => $columnName) :
				if ($this->db->field_exists($columnName, $tableName)) {
					if ($this->checkIndex($tableName, $columnName) == 0) {
						$this->db->query("CREATE INDEX {$columnName} 
	  								ON {$tableName} ({$columnName})");
					}
				}
			endforeach;
		endforeach;
	}


	protected function checkIndex($tableName, $columnName)
	{
		// Check if the desired index is present
		$query = $this->db->query("SHOW INDEX FROM $tableName WHERE Column_name = '$columnName'");
		if ($query->num_rows() > 0) {
			return true;
		} else {
			return false;
		}
	}


	public function  checkExistFields($table, $fields)
	{
		if ($this->db->field_exists($fields, $table)) {
			return 1;
		} else {
			return 0;
		}
	}


	public function check_keywords($keywords)
	{
		$this->db->select();
		$this->db->from('language_data');
		$this->db->or_where_in('keyword', $keywords);
		$query = $this->db->get();
		if ($query->num_rows() > 1) {
			return 1;
		} else {
			return 0;
		}
	}

	function activeFeatures()
	{
		$data = ['is_header' => 0];
		$ids = ['5', '6', '7', '10', '11', '12', '13'];
		$this->admin_m->in_update($data, $ids, 'features');
	}

	public function check_slug($slug, $table)
	{
		$this->db->select();
		$this->db->from($table);
		$this->db->where('slug', $slug);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return 1;
		} else {
			return 0;
		}
	}

	public function check_id($id, $table)
	{
		$this->db->select();
		$this->db->from($table);
		$this->db->where('id', $id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return 1;
		} else {
			return 0;
		}
	}

	public function add_permissions($type = null)
	{
		if ($type == 'qpos') :
			$check_slug = $this->check_slug('pos-order', 'permission_list');
			if ($check_slug == 0) :
				$this->db->query("INSERT INTO permission_list(id,title,slug,status) VALUES 
	  						('9','POS Order','pos-order','1')");
			endif;

			$check_slug = $this->check_slug('pos-settings', 'permission_list');
			if ($check_slug == 0) :
				$this->db->query("INSERT INTO permission_list(id,title,slug,status) VALUES 
	  						('10','POS Settings','pos-settings','1')");
			endif;
		endif;
	}

	public function add_features($type = null)
	{
		if ($type == 'qpos') :
			$check_slug = $this->check_slug('pos', 'features');
			if ($check_slug == 0) :
				$this->db->query("INSERT INTO features(id,features,slug,status,is_features,created_at) VALUES 
	  						('12','POS','pos','1','1','2022-11-25 23:04:31')");
			endif;
		endif;

		if ($type == 'affiliate') :
			$check_slug = $this->check_slug('affiliate', 'features');
			if ($check_slug == 0) :
				$this->db->query("INSERT INTO features(id,features,slug,status,is_features,created_at) VALUES 
	  						('13','Affiliate','affiliate','1','1','2024-01-05 23:04:31')");
			endif;
		endif;

		if ($type == 'dboy') :
			$check_slug = $this->check_slug('dboy', 'features');
			if ($check_slug == 0) :
				$this->db->query("INSERT INTO features(id,features,slug,status,is_features,created_at) VALUES 
	  						('14','Delivery Staff','dboy','1','1','2024-08-20 23:04:31')");
			endif;
		endif;
	}




	public function transfer_pacakge()
	{
		$this->load->model('custom_m');
		$this->custom_m->transfer_data('item_packages', 'item_packages_list', 'package_id');
		return true;
	}



	public function change_price()
	{
		$payment_info = $this->admin_m->select('payment_info');
		foreach ($payment_info as $key => $value) {
			@$this->admin_m->update(['package_price' => $value['price']], $value['id'], 'payment_info');
		}

		return true;
	}


	public function get_customers()
	{
		$customer_list = $this->admin_m->get_customers();
		$data = [];
		if (sizeof($customer_list) > 1) :
			foreach ($customer_list as $key => $row) :
				$data[] = [
					'old_id' => $row->id,
					'user_id' => $row->user_id,
					'customer_name' => $row->name,
					'phone' => $row->phone,
					'email' => $row->email,
					'password' => $row->password,
					'country_id' => $row->country_id,
					'thumb' => $row->thumb,
					'images' => $row->images,
					'address' => $row->address,
					'gmap_link' => $row->gmap_link,
					'question' => $row->question,
					'is_pos' => 0,
				];
			endforeach;

			$insert = $this->admin_m->insert_all($data, 'customer_list');
		else :
			$insert = 1;
		endif;

		if ($insert) {
			$new_customer_list = $this->admin_m->get_new_customers();  // new customers

			foreach ($new_customer_list as $key => $row) :
				$new_customer_data = 	$this->admin_m->get_order_by_customer_id($row->old_id);  // order list by old customer id


				foreach ($new_customer_data as $key => $c) :
					if (!empty($c)) {
						$is_order_update = $this->admin_m->update(['customer_id' => $row->id], $c->id, 'order_user_list'); //update cusotmer id in order table	

					}

				endforeach;


				$update_customer = 	$this->admin_m->update(['is_update' => 1], $row->id, 'customer_list');  // update new custoemr table after


				if ($update_customer) {
					$del_id = 	$this->admin_m->delete($row->old_id, 'staff_list');
				}

			endforeach;
		}
	}

	public function get_staff_from_order()
	{
		$order_details = $this->common_m->get_orders_for_staff_details();
		if (!empty($order_details)) :
			foreach ($order_details as $key => $row) {
				$data[] = [
					'order_id' => $row->id,
					'staff_id' => $row->staff_id,
					'shop_id' => $row->shop_id,
					'staff_role' => 'staff',
					'action_type' => $row->staff_action == 0 ? 'accept' : $row->staff_action,
					'created_at' => $row->created_at,
				];
			}
			$check = $this->default_m->select('staff_order_activity_logs');
			if (empty($check)) {
				$this->default_m->insert_all($data, 'staff_order_activity_logs');
			}
		endif;
	}


	public function addMaxQty()
	{
		$addColumnQueries = [
			'extra_title_list' => [
				'max_qty' => "INT(11) NOT NULL DEFAULT 0",
			],


			'settings' => [
				'tax_system' => "VARCHAR(20) NOT NULL DEFAULT 'percentage'",
			],

		];


		$keywords = ['max_qty', 'tax_system'];
		$check_keywords = $this->check_keywords($keywords);
		if ($check_keywords == 0) :
			$this->db->query("INSERT INTO `language_data` (`keyword`, `type`, `details`, `english`) VALUES
				('including_tax','admin','Tax including Formula (EU)','Tax including Formula (EU)'),
				('tax_system','admin','Tax System','Tax System'),
				('default','admin','default','Default'),
				('max_qty','admin','Maximum quantity selecting limit','Maximum quantity selecting limit');");

		endif;


		$this->sql_command($addColumnQueries);
	}
}
