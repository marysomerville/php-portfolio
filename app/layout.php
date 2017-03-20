<?php
class View
{
    public function __construct($view, $data = []) {
        if(!empty($data)) {
            extract($data);
        }

        if(file_exists('app/'.CURRENT_TEMPLATE.'/views/'.$view.'.php')) {
            require_once('app/'.CURRENT_TEMPLATE.'/views/'.$view.'.php');
        }
    }
}