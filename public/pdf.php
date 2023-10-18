<?php
// Allow all access origins
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET");

// Retrieve file content
$fileContent = file_get_contents('lot_register.pdf');

// Send the file content as the response
echo $fileContent;
?>
