<?php
require('setting.php');

if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
} else {
}

$parentID = $_POST["parentID"];

$content = $_POST["content"];
$remind = $_POST["remind_time"];
$is_repeat = $_POST["is_repeat"];
$category_id = $_POST["cat_id"];
$list_id = $_POST["list_id"];
$subtasks = $_POST["subtasks"];

// $sql_insert_tododetail = "INSERT INTO `TodoList`.`todo_detail` (`parent_id`, `repeat`, `remind_time`) VALUES ('1', '0', '2016-11-11 12:22');";

$sql_insert_tododetail = "INSERT INTO `TodoList`.`todo_detail` (`parent_id`, `repeat`, `remind_time`) VALUES ('1', ".$parentID.", '2016-11-11 12:22');";

$result = $mysqli->query($sql_insert_tododetail);
if (!$result) {
   	printf("%s\n", $mysqli->error);
}
printf($mysqli->insert_id);

$sql_insert_subtask = "INSERT INTO `TodoList`.`sub_tasks` (`parent_id`, `content`, `order`) VALUES (".$mysqli->insert_id.", 'hello', '1');";

$mysqli->query($sql_insert_subtask);
printf("insert sub task success");

// function insertSubtasks() {
// 	$sql_insert_subtask = "INSERT INTO `TodoList`.`sub_tasks` (`parent_id`, `content`, `order`) VALUES ('".$userId."','".$price."','".$curDate."','".$addressId."');";
// }

?>

<!-- 
/****************
if ($result = $mysqli->query("SELECT * FROM TodoList.categories;")) {
        /* fetch object array */
    while ($obj = $result->fetch_object()) {
        printf ("%s (%s)\n", $obj->id, $obj->title);
    }
}


	// $stmt = $mysqli->prepare("INSERT INTO todo_detail (`parent_id`, 
	// `repeat`,`remind_time`) VALUES (?, ?, ?)");
	// $stmt->bind_param('ibs', 1, 
	// 0,
	// '2016-11-11 12:22');
	// $stmt->execute(); 
	// $stmt->close();
***************/ -->