<?php require_once'header.php';?>
<?php include('db_con.php');?>


<div class="container-fluid">
	<div class="row" id="wrapper">
	<?php require_once'menubar.php';?>
	<div class="col-sm-12">
		<div class="panel panel-default">
		<div class="panel-body">


<form action="student.php" method="post" name="myForm" role="form">
<div class="form-group">
<label for="location">
   Enter Roll:
</label>
	<input type="text" name="roll"><br/>
	<input type="submit" name="roll_submit" value="Search" class="btn btn-danger">
</div>
</form>

<?php
error_reporting(E_ERROR||E_WARNING);
	$ses=$_REQUEST['session'];
	$op1=mysqli_query($conn,"SELECT DISTINCT session FROM student");

	$hall=$_REQUEST['hall'];
	$op2=mysqli_query($conn,"SELECT DISTINCT hall FROM student");

?>

<form action="student.php" method="post">
<div class="form-group">
<label for="session">
   Select Session:
</label>
	
	<SELECT name="session" id="session">
	<option value="alls" >All</option>
<?php 	  
	    while ($s=mysqli_fetch_array($op1)){ 
	    		$session=$s['session'];
	    		if(strcmp ($session,$ses) == 0){
	    			$isSelected="selected";
	    		}
	    		else{
	    			$isSelected="";
	    		}
	    	?>
		
		<option value="<?php echo $session; ?>"  <?=$isSelected; ?>   ><?php echo $session; ?></option>
<?php } ?>
	</SELECT>
<label for="hall">
   Select Hall:
</label>
		<SELECT name="hall" id="hall">
	<option value="allh">All</option>
<?php 	  
	    while ($h=mysqli_fetch_array($op2)){ 
	    		$ha=$h['hall'];
	    		if(strcmp ($ha,$hall) == 0){
	    			$isSelected="selected";
	    		}
	    		else{
	    			$isSelected="";
	    		}
	    	?>
		
		<option value="<?php echo $ha; ?>"  <?=$isSelected; ?>   ><?php echo $ha; ?></option>
<?php } ?>
	</SELECT>
	<br/>
	<input type="submit" name="submit" value="Search" class="btn btn-danger">
</div>
</form>

<?php
 if ($ses=='alls' && $hall=='allh'){
  	$qall=mysqli_query($conn,"SELECT * FROM student");
  	while ($all=mysqli_fetch_array($qall)) {
  		echo "<hr>";
  		echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
		echo "<div class='row'>";
		echo "<div class='col-sm-12'>";
		echo "<br/>";
  		echo "<b>Name: </b>".$all['name']."<br/>";
  		echo "<b>Roll: </b>".$all['roll']."<br/>";
  		echo "<b>Year: </b>".$all['year']."<br/>";
  		echo "<b>Session: </b>".$all['session']."<br/>";
  		echo "<b>Hall: </b>".$all['hall']."<br/>";
  		echo "<b>GPA: </b>".$all['gpa'];
  		echo "</div>";
	 	echo "</div>";
	 	echo "<br/>";
	 	echo "</div>";
  	
   }
  } else if ($ses!='alls'&& $hall=='allh'){
   $qhall=mysqli_query($conn,"SELECT * FROM student where session='$ses'");

   while ($ha=mysqli_fetch_array($qhall)) {
  		echo "<hr>";
  		echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
		echo "<div class='row'>";
		echo "<div class='col-sm-12'>";
		echo "<br/>";
  		echo "<b>Name: </b>".$ha['name']."<br/>";
  		echo "<b>Roll: </b>".$ha['roll']."<br/>";
  		echo "<b>Year: </b>".$ha['year']."<br/>";
  		echo "<b>Session: </b>".$ha['session']."<br/>";
  		echo "<b>Hall: </b>".$ha['hall']."<br/>";
  		echo "<b>GPA: </b>".$ha['gpa'];
  		echo "</div>";
	 	echo "</div>";
	 	echo "<br/>";
	 	echo "</div>";
  	
  	

  	}
  }else if ($ses=='alls' && $hall!='allh'){
   $qse=mysqli_query($conn,"SELECT * FROM student where hall='$hall'");
   while ($sess=mysqli_fetch_array($qse)) {
  		echo "<hr>";
  		echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
		echo "<div class='row'>";
		echo "<div class='col-sm-12'>";
		echo "<br/>";
  		echo "<b>Name: </b>".$sess['name']."<br/>";
  		echo "<b>Roll: </b>".$sess['roll']."<br/>";
  		echo "<b>Year: </b>".$sess['year']."<br/>";
  		echo "<b>Session: </b>".$sess['session']."<br/>";
  		echo "<b>Hall: </b>".$sess['hall']."<br/>";
  		echo "<b>GPA: </b>".$sess['gpa'];
  		echo "</div>";
	 	echo "</div>";
	 	echo "<br/>";
	 	echo "</div>";
  	

  	}
  }else {
  	$other=mysqli_query($conn,"SELECT * FROM student where session='$ses' AND hall='$hall'");
  	while ($filter=mysqli_fetch_array($other)) {
  		echo "<hr>";
		echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
		echo "<div class='row'>";
		echo "<div class='col-sm-12'>";
		echo "<br/>";
  		echo "<b>Name: </b>".$filter['name']."<br/>";
  		echo "<b>Roll: </b>".$filter['roll']."<br/>";
  		echo "<b>Year: </b>".$filter['year']."<br/>";
  		echo "<b>Session: </b>".$filter['session']."<br/>";
  		echo "<b>Hall: </b>".$filter['hall']."<br/>";
  		echo "<b>GPA: </b>".$filter['gpa'];
  		echo "</div>";
	 	echo "</div>";
	 	echo "<br/>";
	 	echo "</div>";

  	}
  }

?>
<?php
//roll wise filter
if(isset($_POST['roll_submit'])){
$roll = mysqli_real_escape_string($conn,$_REQUEST['roll']);
$result = mysqli_query($conn,"SELECT * FROM student WHERE roll='$roll'");

if($result === FALSE) { 
    die(mysqli_error($conn));
}

while($row = mysqli_fetch_array($result))
{
	echo "<hr>";
	echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
	echo "<div class='row'>";
	echo "<div class='col-sm-12'>";
	echo "<br/>";
    echo "<b>Name: </b>".$row['name']."<br/>";
    echo "<b>Roll: </b>".$row['roll']."<br/>";
    echo "<b>Year: </b>".$row['year']."<br/>";
    echo "<b>Session: </b>".$row['session']."<br/>";
    echo "<b>Hall: </b>".$row['hall']."<br/>";
    echo "<b>GPA: </b>".$row['gpa'];
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