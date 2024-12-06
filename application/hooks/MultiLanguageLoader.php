<?php
 class MultiLanguageLoader
 {
    function initialize() {
        $ci =& get_instance();
        $setting = settings();
        $ci->load->helper('language');
       $siteLang  = $ci->session->userdata(get_session()) ;
       // Check if at least one key exists in the session
       if (isset($siteLang) && !empty($siteLang)) {
           
           $ci->lang->load('content',$siteLang);
       } else {
              // default language files
              $ci->lang->load('content', isset($setting['language'])?$setting['language']:'english');
       } 
    }
    
 }
// class MultiLanguageLoader
// {
//     function initialize() {
//         $ci =& get_instance();
//         $setting = settings();
//         // Load language helper
//         $ci->load->helper('language');

//         // Define the session keys for each context
//         $contexts = ['admin', 'home', 'user'];
//     //    var_dump($ci->session->userdata($context)).die();
//         // Loop through each context and load its language file if the session is set
//         foreach ($contexts as $context) {
//             $siteLang = $ci->session->userdata($context);
//             // var_dump($siteLang).die();
//             if ($siteLang) {
//                 // Load language file for the specific context
//                 $ci->lang->load("content", $siteLang);
//             }
//         }
//         // Fallback to default language if no specific language session is set
//         if (empty(array_filter(array_map([$ci->session, 'userdata'], $contexts)))) {
//             $defaultLang = isset($setting['language']) ? $setting['language'] : 'english';
//             $ci->lang->load('content', $defaultLang);
//         }
//     }
// }

  

  ?>