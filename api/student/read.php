<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// include database and object files
include_once '../config/database.php';
include_once '../objects/student.php';

// instantiate database and student object
$database = new Database();
$db = $database->getConnection();

// initialize object
$student = new Student($db);

// get posted data
$data = json_decode(file_get_contents("php://input"));
$status = !empty($data->status)?$data->status:"current";

// query students
$stmt = $student->read($status);
$num = $stmt->rowCount();

// check if more than 0 record found
if($num>0)
{
    // students array
    $students_arr=array();
    //$students_arr["records"]=array();

    // retrieve our table contents
    // fetch() is faster than fetchAll()
    // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);

        $student_item=array(
            "id"=> $id,
            "name" => $name . " " . $lastname,
            "linkedin" => $linkedin,
            "email" => $email,
            "short_desc" => $short_desc,
            //"long_desc" => $long_desc,
            //"status" => $status,
            "photo_filename" => $photo_filename
        );
        array_push($students_arr,$student_item);
    }

    // set response code - 200 OK
    http_response_code(200);

    // show students data in json format
    echo json_encode($students_arr);
}
else
{
    // set response code - 404 Not found
    http_response_code(404);
    // tell the user no students found
    echo json_encode(
        array("message" => "No students found.")
    );
}

?>
