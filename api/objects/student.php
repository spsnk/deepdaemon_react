<?php
class Student
{
    // database connection and table name
    private $conn;
    private $table_name = "student";
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
        return $stmt;
    }
}
