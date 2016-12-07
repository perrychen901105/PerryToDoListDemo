<?php
require("setting.php");
$returnValue = array();
$sql_fetch_categories = "SELECT * FROM TodoList.todo_detail;";
if ($result = $mysqli->query($sql_fetch_categories)) {
	
        /* fetch object array */
    while ($obj = $result->fetch_array()) {
        $arrObjects[] = array('id' => $obj['id'], 'parent_id' => $obj['parent_id'], 'notes' => $obj['notes'], 'repeat' => $obj['repeat'], 'remind_time' => $obj['remind_time']);
    }
    $returnValue = array('success' => 0, 'message' => "success", 'data' => $arrObjects);
} else {
	printf("failed");
	$returnValue = array('success' => 1, 'message' => "failed", 'data' => $arrObjects);
	
}
printf(json_encode($returnValue));
?>