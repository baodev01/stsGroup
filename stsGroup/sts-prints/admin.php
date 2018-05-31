<!DOCTYPE HTML>
<!--
	Asymmetry by gettemplates.co
	Twitter: http://twitter.com/gettemplateco
	URL: http://gettemplates.co
-->
<html>
	<?php include 'includes/cm_con.php'; ?>
	<?php include 'includes/cm_header.php'; ?>
<body>
	<?php include 'includes/cm_top.php'; ?>
	
	<div id="page">
		<?php include 'includes/cm_menu.php'; ?>
		
		<?php
		    $user = "";
		    $pass = "";

		    if(isset($_POST['user'])) {
		        $user = trim($_POST['user']);
		        $user = substr($user,0,50);
		    }

		    if(isset($_POST['pass'])) {
		        $pass = trim($_POST['pass']);
		        $pass = substr($pass,0,50);
		    }

		    $checkLogin = false;
		    if($user != NULL && $pass != NULL) {
		    	if($user == "admin" && $pass == "123456a-") {
		    		$checkLogin = true;
		    	}
		    }

		    if($checkLogin) {
		    	include 'includes/cn_admin.php';
		    } else {
		    	include 'includes/cn_admin_login.php';
		    }
		?>

		<?php include 'includes/cm_footer.php'; ?>
	</div>

	
</body>
</html>

