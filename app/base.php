<?php
class BaseController
{
    public function __construct($action){
        if(method_exists($this, $action) && !empty($action)) {
            // The method exists so run it
            $this->$action();
        } elseif(empty($action)) {
            // No specific action was given so run the default one
            $this->index();
        } else {
            // Something given, but doesn't exist
            header("HTTP/1.0 404 Not Found");
            $this->notFound();
        }
    }

    public function notFound() {
        new View('notFound');
    }
}