<?php require_once'header.php';?>
<?php include('db_con.php');?>

<div class="container-fluid">
	<div class="row" id="wrapper">
	<?php require_once'menubar.php';?>
	<div class="col-sm-12">
		<div class="panel panel-default">
		<div class="panel-body">
<h3>Details</h3>

<?php
	if (isset($_REQUEST['id']))
 {
 $id = $_REQUEST['id'];

$result=mysqli_query($conn,"SELECT * FROM teacher WHERE t_id=$id ");

while($row=mysqli_fetch_array($result)){
	echo "<hr>";
	echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
	echo "<div class='row'>";
	echo "<div class='col-md-6'>";
	echo "<br/>";
	echo "<b style='font-size:16px; color:#088A85;'>".$row['name']."</b><br/>";
	echo "<b style='font-size:16px;'>".$row['type']."</b><br/>";
	echo "<i>".$row['qualification']."</i><br/>";
	echo "<b>Status: &nbsp;</b>".$row['status'];
	echo "</div>";
	
	echo "<br/>";
	echo "<div class='col-md-6'>";
	echo "<b>Course Taken: </b><br/>";
	$desc = $row['course'];
	$desc_exp = explode("&&", $desc);
	echo "<ul style='list-style-type:disc'>";
	foreach ($desc_exp as $key) {
	echo "<li>".$key."</li><br/>";
}
	echo "</ul>";

	echo "<b>Research: </b><br/>";
	$desc = $row['research'];
	$desc_exp = explode("&&", $desc);
	echo "<ul style='list-style-type:disc'>";
	foreach ($desc_exp as $key) {
	echo "<li>".$key."</li><br/>";
}
	echo "</ul>";

	echo "</div>";
	echo "</div>";
	echo "<br/>";
	echo "</div>";
}
}
?>


</div>
</div>
</div>
</div>
</div>