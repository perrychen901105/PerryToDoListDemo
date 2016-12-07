<?php
require("setting.php");

// $result = array('success' => 0, 'message' => "success", 'data' => );
$returnValue = array();
$sql_fetch_categories = "SELECT * FROM TodoList.categories;";
if ($result = $mysqli->query($sql_fetch_categories)) {
	
        /* fetch object array */
    while ($obj = $result->fetch_array()) {
        $arrObjects[] = array('id' => $obj['id'], 'title' => $obj['title'], 'content' => $obj['content'], 'counts' => $obj['counts'], 'create_time' => $obj['create_time'], 'modify_time' => $obj['modify_time']);
    }
    $returnValue = array('success' => 0, 'message' => "success", 'data' => $arrObjects);
} else {
	printf("failed");
	$returnValue = array('success' => 1, 'message' => "failed", 'data' => $arrObjects);
	
}
printf(json_encode($returnValue));
?>