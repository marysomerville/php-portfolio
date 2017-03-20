<?php
include('app/includes/settings.php');
include('app/base.php');
include('app/controllers/indexController.php');
include('app/controllers/projectController.php');
include('app/models/projectModel.php');
include('app/layout.php');

$page = $_GET['page'];

if (!empty($page)) {
    // Routing
    $data = array(
        'project'    => array('controller' => 'Project', 'action' => 'showProject')
    );

    foreach($data as $key => $components){
        if ($page == $key) {
            // The URL matches something in our array, so use that controller and action
            $controller = $components['controller'];
            $action     = $components['action'];
            break;
        }
    }

    if (isset($controller)) {
        new $controller($action);
    }
} else {
    new Home('');
}
