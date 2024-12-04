<?php 
$CI =& get_instance();

// Define session keys and their corresponding types
$contexts = ['admin', 'home', 'user'];
$activeTypes = [];

// Check which session variables are set
foreach ($contexts as $context) {
    if ($CI->session->userdata($context)) {
        $activeTypes[] = $context; // Add the type to activeTypes
    }
}
// Fetch language data based on active types
if (!empty($activeTypes)) {
    $CI->db->where_in('type', $activeTypes); // WHERE type IN ('admin', 'home', 'user')
    $query = $CI->db->get('language_data');
    foreach ($query->result() as $language) {
        $lang[$language->keyword] = $language->ar; // Assuming 'english' is the default column
    }
}

// else{
//     foreach($CI->db->get('language_data')->result() as $language):
//         $lang[$language->keyword] = $language->ar;
//     endforeach;
// }