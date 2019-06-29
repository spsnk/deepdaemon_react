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

    function read()
    {
        // select all query
        $query =    "SELECT * FROM $this->table_name s ORDER BY s.lastname DESC";
        // prepare query statement
        $stmt = $this->conn->prepare($query);
        // execute query
        $stmt->execute();
        return $stmt;
    }
}
