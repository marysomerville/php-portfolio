<?php

class db {

	static public function query($sql) {
	
		include 'config.php';
		
		try  {
			$result = $pdo->prepare($sql);
			$result->setFetchMode(PDO::FETCH_ASSOC);
			$result->execute();
		}
		catch (PDOException $e) {
			$error = 'Error fetching data: ' . $e->getMessage();
			exit();
		}

		return $result;
	}

}
?>