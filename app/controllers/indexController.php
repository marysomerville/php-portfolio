<?php
class Home extends BaseController
{
    public function index() {

    	$project = new ProjectModel();

    	$projects = $project->getProjects();

    	$content = [
            'projects' => $projects
        ];

        $seo = [
            'pagetitle' => 'Mary Somerville : Front End Web Developer',
            'description'   => 'Online Portfolio for Mary Somerville, front-end web developer'
        ];

        new View('common/header', $seo);
        new View('index_header');
        new View('index_nav');
        new View('index_body', $content);
        new View('footer');
        new View('common/footer');
    }
}