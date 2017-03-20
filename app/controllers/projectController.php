<?php 
class Project extends BaseController 
{
	public function index() {
        $this->showAllPosts();
    }

    public function showProject() {
    	$project = new ProjectModel();

    	$project = $project->getProjectDetails($_GET['project']);

    	$content = [
            'project' => $project
        ];

        $seo = [
            'pagetitle' => $project['title'].' project',
            'description'   => $project['title'].' project, front-end development description'
        ];

        new View('common/header', $seo);
        new View('projects_body', $content);
        new View('footer');
        new View('common/footer');
    }
}