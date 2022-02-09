<?php
include 'db-connection/connect.php';

$q = 'SELECT * FROM products';

$q = mysqli_real_escape_string($link, $q);
 
$rs = mysqli_query($link, $q);

$data = [];


if ($rs) {

	while ($row = mysqli_fetch_assoc($rs)) {
		
		
		array_push($data, $row);
	}
}

$markup = '';

for ($i = 0; $i < sizeof($data); $i++) {
	$markup .= '<ul>';
	foreach($data[$i] as $k => $v) {
		$markup .= "<li>$k: $v</li>";
	}
	$markup .= '</ul>';
}

?>

<!doctype html>
<html lang="en">
  <head>
    <?php include 'includes/meta.php'; ?>
    <?php include 'includes/styles.php'; ?>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Raleway&family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    
    <link rel="stylesheet" href="./css/main.css">

    <title>Kuwafi</title>
  </head>
  <body>
<!--    NAVBAR-->
    <?php include 'includes/navbar.php'; ?>
<!--    MASTHEAD-->
    <?php include 'includes/masthead.php'; ?>
    
    <h2>Products</h2>
    
    <div class="container">
    	<div class="row">
    	
<!--    DATA-->
    	<?php include 'stock/data.php'; ?>
<!--    COLLECT AND PRINT DATA-->
        <?php include 'web-service/collect-and-print-data.php'; ?>
    	</div>
    </div>
<!--    BOOTSTRAP SCRIPT-->
       <?php include 'includes/scripts.php'; ?>


<!--    FOOTER-->
       <?php include 'includes/footer.php'; ?>
  </body>
</html>