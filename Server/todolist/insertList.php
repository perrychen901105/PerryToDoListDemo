<?php
require('setting.php');

if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
} else {
}

$cateID = $_POST["category_id"];
$title = $_POST["title"]
printf("$_POST["favoruite"];");
if ($_POST["favoruite"] == true) {
	$favoruite = 1;
} else {
	$favoruite = 0;
}
printf("$_POST["completed"]");
if ($_POST["completed"] == true) {
	$completed = 1;
} else {
	$completed = 0;
}

// $sql_insert_tododetail = "INSERT INTO `TodoList`.`todo_detail` (`parent_id`, `repeat`, `remind_time`) VALUES ('1', '0', '2016-11-11 12:22');";

$sql_insert_tododetail = "INSERT INTO `TodoList`.`list` (`cat_id`, `title`, `favouruite`, `completed`) VALUES ('".$cateID."', ".$title.", '".$favoruite."', '".$completed."');";

$result = $mysqli->query($sql_insert_tododetail);
if (!$result) {
   	printf("%s\n", $mysqli->error);
}
printf($mysqli->insert_id);

// function insertSubtasks() {
// 	$sql_insert_subtask = "INSERT INTO `TodoList`.`sub_tasks` (`parent_id`, `content`, `order`) VALUES ('".$userId."','".$price."','".$curDate."','".$addressId."');";
// }

?>