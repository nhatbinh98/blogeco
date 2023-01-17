<!DOCTYPE html>
<html>
<head>
	<title>Blog</title>
</head>
<body>
	<?php
	 	
	?>
	
	<?php
		spl_autoload_register(function($class){
			include_once 'system/libs/'.$class.'.php';
		});
		include_once 'app/config/config.php';
		

		$main = new Main();
		
		
	

	?>
	
	<?php
		
	 ?>
	
</body>
</html>