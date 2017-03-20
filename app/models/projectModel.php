<?php

class ProjectModel {

	public function getProjects() {

		$sql = "SELECT * FROM project WHERE `status` = '1' ORDER BY `id` DESC";

		$query = db::query($sql);

		if ($query === false) {	print("Could not select any data" . mysql_error() . "<br /><br />"); }

		$row = $query->fetchAll();
		
		return $row;

	}

	public function getProjectDetails($projectId) {

		$sql = "SELECT * FROM project WHERE `id` = '".$projectId."' ORDER BY `id` DESC";

		$query = db::query($sql);

		if ($query === false) {	print("Could not select any data" . mysql_error() . "<br /><br />"); }

		$row = $query->fetch();

		return $row;

	}

}

?>
