<?php

$result_list_merch = array();

$sql = "SELECT * FROM merch";

$result =$mysqli->query($sql); 

while ($item=$result->fetch_assoc()){
    $result_list_merch[]=$item;
}