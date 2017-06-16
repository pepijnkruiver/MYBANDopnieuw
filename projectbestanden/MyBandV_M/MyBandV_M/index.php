<?php

//configuration settings
require 'includes/config.php';

//initialisation
require 'includes/bootstrap.php';

// head
$templateParser->assign('myTitle', $title);
$templateParser->display('head.tpl');

// header

$templateParser->display('header.tpl');
// menu
$templateParser->display('menu.tpl');

$action = isset($_GET['page']) ? $_GET['page'] : 'home';

switch ($action) {
    case 'home':
        require_once 'model/getarticles.php';
        require_once 'model/getmerch.php';
        $templateParser->assign('result_list', $result_list);
        $templateParser->assign('result_list_merch', $result_list_merch);
        $templateParser->display('articles.tpl');
        break;
    case 'tour':
        //get articles from the model
        require_once 'model/gettour.php';
        require_once 'model/getmerch.php';
        $templateParser->assign('result_list_tour', $result_list_tour);
        $templateParser->assign('result_list_merch', $result_list_merch);
        $templateParser->display('tour.tpl');
        break;
    case 'about':
        require_once 'model/getabout.php';
        require_once 'model/getaboutmembers.php';
        require_once 'model/getmerch.php';
        $templateParser->assign('result_list_abt', $result_list_abt);
        $templateParser->assign('result_list_member', $result_list_member);
        $templateParser->assign('result_list_merch', $result_list_merch);
        $templateParser->display('about.tpl');
        break;
    case 'contact':
        require_once 'model/getcontact1.php';
        require_once 'model/getcontact2.php';
        require_once 'model/getmerch.php';
        $templateParser->assign('result_list_contact1', $result_list_contact1);
        $templateParser->assign('result_list_contact2', $result_list_contact2);
        $templateParser->assign('result_list_merch', $result_list_merch);
        $templateParser->display('contact.tpl');
        break;
    case 'search':
        require_once 'model/getmerch.php';
        $templateParser->assign('result_list_merch', $result_list_merch);
        $templateParser->display('views/search.tpl');
        break;
}

// footer
$templateParser->display('footer.tpl');

?>