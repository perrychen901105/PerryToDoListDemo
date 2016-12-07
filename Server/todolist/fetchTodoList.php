<?php
require("setting.php");
$category_id = $_GET["category"];
$returnValue = array();
$sql_fetch_categories = "SELECT * FROM TodoList.list where `cat_id` = ".$category_id.";";
if ($result = $mysqli->query($sql_fetch_categories)) {
	$arrObjects = array();
        /* fetch object array */
    while ($obj = $result->fetch_array()) {
        $arrObjects[] = array('id' => $obj['id'],'cat_id' => $obj['cat_id'], 'title' => $obj['title'], 'favourite' => $obj['favourite'], 'completed' => $obj['completed'], 'create_time' => $obj['create_time'], 'modify_time' => $obj['modify_time']);
    }
    $returnValue = array('success' => 0, 'message' => "success", 'data' => $arrObjects);
} else {
    
	printf("failed");
	$returnValue = array('success' => 1, 'message' => "failed", 'data' => $arrObjects);
	
}
printf(json_encode($returnValue));

?>