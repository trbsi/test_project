<?php
require_once __DIR__ . '/../vendor/autoload.php';
use TestNamespace\Test;

$x = new Test;
?>

<html>
	<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<title>Test</title>
	</head>
	<body>
	<div class="container">
	<?php
	$x->generateTable(isset($_GET["page"]) ? $_GET["page"] : NULL);
	?>
	</div>
	</body>
</html>