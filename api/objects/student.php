<?php
class Student
{
    // database connection and table name
    private $conn;
    // object properties
    public $id;
    public $name;
    public $lastname;
    public $linkedin;
    public $email;
    public $short_desc;
    public $long_desc;
    public $status;
    public $photo_filename;
    public $ss;

    // constructor with $db as database connection
    public function __construct($db)
    {
        $this->conn = $db;
    }

    function read_all($status)
    {
        // select all query
        $query =   "SELECT student.id, CONCAT( student.name, ' ', student.lastname) AS name,
                            student.linkedin, student.email, student.short_desc, student.photo_filename,
                            GROUP_CONCAT( grade.type ) AS grade,
                            GROUP_CONCAT( career.short_name ) AS career,
                            GROUP_CONCAT( school.short_name ) AS school
                    FROM student
                    left JOIN grade  ON grade.id_student = student.id
                    left JOIN career ON career.id = grade.id_career
                    left JOIN school ON school.id = grade.id_school
                    WHERE student.status LIKE '$status'
                    GROUP BY student.id
                    ORDER BY student.lastname;";
        // prepare query statement
        $stmt = $this->conn->prepare($query);
        // execute query
        $stmt->execute();
        $this->parse($stmt);
    }

    function read($id)
    {
        // select all query
        $query =   "SELECT student.id, CONCAT( student.name, ' ', student.lastname) AS name,
                            student.linkedin, student.email, student.short_desc, student.photo_filename,
                            GROUP_CONCAT( grade.type ) AS grade,
                            GROUP_CONCAT( career.short_name ) AS career,
                            GROUP_CONCAT( school.short_name ) AS school
                    FROM student
                    left JOIN grade  ON grade.id_student = student.id
                    left JOIN career ON career.id = grade.id_career
                    left JOIN school ON school.id = grade.id_school
                    WHERE student.id = $id
                    GROUP BY student.id;";
        // prepare query statement
        $stmt = $this->conn->prepare($query);
        // execute query
        $stmt->execute();
        $this->parse($stmt);
    }

    private function parse ($stmt)
    {
        $num = $stmt->rowCount();
        // check if more than 0 record found
        if($num>0)
        {
            // students array
            $students_arr=array();
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
                    "name" => $name,
                    "linkedin" => $linkedin,
                    "email" => $email,
                    "short_desc" => $short_desc,
                    "photo_filename" => $photo_filename,
                    "grade" => explode(",",$grade),
                    "career" => explode(",", $career),
                    "school" => explode(",", $school)
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
    }
}
