<?php require_once'header.php';?>
<?php include('db_con.php');?>


<div class="container-fluid">
	<div class="row" id="wrapper">
	<?php require_once'menubar.php';?>
	<div class="col-sm-12">
		<div class="panel panel-default">
		<div class="panel-body">

<?php
	error_reporting(E_ERROR||E_WARNING);
	$s=$_REQUEST['session'];
	$op=mysqli_query($conn,"SELECT DISTINCT session FROM routine");
	$wk=$_REQUEST['week'];
	$op1=mysqli_query($conn,"SELECT DISTINCT week FROM routine");
?>
<form action="routine.php" method="post" name="myForm" role="form">
<div class="form-group">
<label for="type">
   	Select Session:
</label>
	<SELECT name="session">
	<option value='alls'>All</option>
<?php 	while ($t=mysqli_fetch_array($op)){ 
	    		$Se=$t['session'];
	    		if(strcmp ($Se,$s) == 0){$isSelected="selected";
	    		}else{$isSelected="";	    		}
	    	?>
	    	
		
		<option value="<?php echo $Se; ?>"  <?=$isSelected; ?>   ><?php echo $Se; ?></option>
<?php } ?>
	</SELECT>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<label for="type">
   	Select Week:
</label>
<SELECT name="week">
	<option value='allw'>All</option>
	<?php 	  
	    while ($w=mysqli_fetch_array($op1)){ 
	    		$week=$w['week'];
	    		if(strcmp ($week,$wk) == 0){$isSelected="selected";
	    		}else{$isSelected="";	    		}
	    	?>
	<option value="<?php echo $week; ?>"  <?=$isSelected; ?>   ><?php echo $week; ?></option>
	<?php } ?>
	</SELECT><br/>
	<input type="submit" name="submit" value="Search" class="btn btn-danger">
</div>
</form>


<?php

  if ($s=='alls' && $wk=='allw'){
  	$qall=mysqli_query($conn,"SELECT * FROM routine");
  	while ($all=mysqli_fetch_array($qall)) {
  		echo "<hr>";
  		echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
		echo "<div class='row'>";
		echo "<div class='col-sm-12'>";
		echo "<br/>";
  		echo "<b>Week: &nbsp;</b>".$all['week']."<br/>";
  		echo "<b>Year: &nbsp;</b>".$all['year']."<br>";
  		echo "<b>Session: &nbsp;</b>".$all['session']."<br/>";
  		echo "<b>Type: &nbsp;</b>".$all['type']."<br/>";
  		echo "<b>Time: &nbsp;</b>".$all['time']."<br/>";


  		$p1=$all['course_id'];
  	$co1=mysqli_query($conn,"SELECT course_id,name FROM course where co_id=$p1");
  	while ($a1=mysqli_fetch_array($co1)) {
  		echo "<b>Course ID: &nbsp;</b>".$a1['course_id']."<br/>";
  		echo "<b>Course Name: &nbsp;</b>".$a1['name']."<br/>";
  	}
  	$q1=$all['teacher_id'];
  	$t1=mysqli_query($conn, "SELECT name FROM teacher WHERE t_id='$q1'");
  	while ($b1=mysqli_fetch_array($t1)) {
  		echo "<b>Teacher Name: &nbsp;</b>".$b1['name']."<br/>";
   }

   $r1=$all['room_no'];
  	$u1=mysqli_query($conn, "SELECT room_no,room_name FROM room WHERE room_id=$r1");
  	while ($c1=mysqli_fetch_array($u1)) {
  		echo "<b>Room NO: &nbsp;</b>".$c1['room_no']."<br/>";
  		echo "<b>Room Name: &nbsp;</b>".$c1['room_name'];
  		echo "</div>";
		echo "</div>";
		echo "<br/>";
		echo "</div>";
}
}
  } else if ($s!='alls'&& $wk=='allw'){
   $qwk=mysqli_query($conn,"SELECT * FROM routine where session='$s'");
   while ($week=mysqli_fetch_array($qwk)) {
  		echo "<hr>";
  		echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
		echo "<div class='row'>";
		echo "<div class='col-sm-12'>";
		echo "<br/>";
  		echo "<b>Week: &nbsp;</b>".$week['week']."<br/>";
  		echo "<b>Year: &nbsp;</b>".$week['year']."<br>";
  		echo "<b>Session: &nbsp;</b>".$week['session']."<br/>";
  		echo "<b>Type: &nbsp;</b>".$week['type']."<br/>";
  		echo "<b>Time: &nbsp;</b>".$week['time']."<br/>";


  		$p2=$week['course_id'];
  	$co2=mysqli_query($conn,"SELECT course_id,name FROM course where co_id=$p2");
  	while ($a2=mysqli_fetch_array($co2)) {
  		echo "<b>Course ID: &nbsp;</b>".$a2['course_id']."<br/>";
  		echo "<b>Course Name: &nbsp;</b>".$a2['name']."<br/>";
  	}
  	$q2=$week['teacher_id'];
  	$t2=mysqli_query($conn, "SELECT name FROM teacher WHERE t_id=$q2");
  	while ($b2=mysqli_fetch_array($t2)) {
  		echo "<b>Teacher Name: &nbsp;</b>".$b2['name']."<br/>";

  	}
  	$r2=$week['room_no'];
  	$u2=mysqli_query($conn, "SELECT room_no,room_name FROM room WHERE room_id=$r2");
  	while ($c2=mysqli_fetch_array($u2)) {
  		echo "<b>Room NO: &nbsp;</b>".$c2['room_no']."<br/>";
  		echo "<b>Room Name: &nbsp;</b>".$c2['room_name'];
  		echo "</div>";
		echo "</div>";
		echo "<br/>";
		echo "</div>";
}
  }
  }else if ($s=='alls' && $wk!='allw'){
   $qse=mysqli_query($conn,"SELECT * FROM routine where week='$wk'");
   while ($sess=mysqli_fetch_array($qse)) {
  		echo "<hr>";
  		echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
		echo "<div class='row'>";
		echo "<div class='col-sm-12'>";
		echo "<br/>";
  		echo "<b>Week: &nbsp;</b>".$sess['week']."<br/>";
  		echo "<b>Year: &nbsp;</b>".$sess['year']."<br>";
  		echo "<b>Session: &nbsp;</b>".$sess['session']."<br/>";
  		echo "<b>Type: &nbsp;</b>".$sess['type']."<br/>";
  		echo "<b>Time: &nbsp;</b>".$sess['time']."<br/>";


  		$p3=$sess['course_id'];
  	$co3=mysqli_query($conn,"SELECT course_id,name FROM course where co_id=$p3");
  	while ($a3=mysqli_fetch_array($co3)) {
  		echo "<b>Course ID: &nbsp;</b>".$a3['course_id']."<br/>";
  		echo "<b>Course Name: &nbsp;</b>".$a3['name']."<br/>";
  	}
  	$q3=$sess['teacher_id'];
  	$t3=mysqli_query($conn, "SELECT name FROM teacher WHERE t_id=$q3");
  	while ($b3=mysqli_fetch_array($t3)) {
  		echo "<b>Teacher Name: &nbsp;</b>".$b3['name']."<br/>";

  	}
  	$r3=$sess['room_no'];
  	$u3=mysqli_query($conn, "SELECT room_no,room_name FROM room WHERE room_id=$r3");
  	while ($c3=mysqli_fetch_array($u3)) {
  		echo "<b>Room NO: &nbsp;</b>".$c3['room_no']."<br/>";
  		echo "<b>Room Name: &nbsp;</b>".$c3['room_name'];
  		echo "</div>";
		echo "</div>";
		echo "<br/>";
		echo "</div>";
}
  }
  }else {
  	$other=mysqli_query($conn,"SELECT * FROM routine where session='$s' AND week='$wk'");
  	while ($filter=mysqli_fetch_array($other)) {
  		echo "<hr>";
  		echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
		echo "<div class='row'>";
		echo "<div class='col-sm-12'>";
		echo "<br/>";
  		echo "<b>Week: &nbsp;</b>".$filter['week']."<br/>";
  		echo "<b>Year: &nbsp;</b>".$filter['year']."<br>";
  		echo "<b>Session: &nbsp;</b>".$filter['session']."<br/>";
  		echo "<b>Type: &nbsp;</b>".$filter['type']."<br/>";
  		echo "<b>Time: &nbsp;</b>".$filter['time']."<br/>";

  		$p4=$filter['course_id'];
  		$co4=mysqli_query($conn,"SELECT course_id,name FROM course where co_id=$p4");
  	while ($a4=mysqli_fetch_array($co4)) {
  		echo "<b>Course ID: &nbsp;</b>".$a4['course_id']."<br/>";
  		echo "<b>Course Name: &nbsp;</b>".$a4['name']."<br/>";
  	}
  	$q4=$filter['teacher_id'];
  	$t4=mysqli_query($conn, "SELECT name FROM teacher WHERE t_id=$q4");
  	while ($b4=mysqli_fetch_array($t4)) {
  		echo "<b>Teacher Name: &nbsp;</b>".$b4['name']."<br/>";


  	}
  	$r4=$filter['room_no'];
  	$u4=mysqli_query($conn, "SELECT room_no,room_name FROM room WHERE room_id=$r4");
  	while ($c4=mysqli_fetch_array($u4)) {
  		echo "<b>Room NO: &nbsp;</b>".$c4['room_no']."<br/>";
  		echo "<b>Room Name: &nbsp;</b>".$c4['room_name'];
  		echo "</div>";
		echo "</div>";
		echo "<br/>";
		echo "</div>";
}
}
}

?>

</div>
</div>
</div>
</div>
</div>