<?php

// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Content-Type: application/json; charset=UTF-8");

// include database and util files
include_once './config/database.php';
include_once './config/util.php';
include_once './objects/member.php';

// instantiate database object
$database = new Database();
$db = $database->getConnection();

// initialize object
$member = new Member($db);

$request_method=$_SERVER["REQUEST_METHOD"];
switch($request_method)
{
    case 'GET':
        // Retrive members
        if(isset($_GET["member_id"]))
        {
            $member_id=intval($_GET["member_id"]);
            $member->read($member_id);
        }
        else
        {
            $status = empty($_GET["status"])?"current":$_GET["status"];
            $member->read_all($status);
        }
        break;
    case 'POST':
        // Insert Product
        //$data = json_decode(file_get_contents("php://input"));
        //insert_product();
        break;
    case 'PUT':
        // Update Product
        //$product_id=intval($_GET["product_id"]);
        //update_product($product_id);
        break;
    case 'DELETE':
        // Delete Product
        //$product_id=intval($_GET["product_id"]);
        //delete_product($product_id);
        break;
    default:
        // Invalid Request Method
        header("HTTP/1.0 405 Method Not Allowed");
        break;
}
?>
