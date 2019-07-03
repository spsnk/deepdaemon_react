<?php
class Project
{
    // database connection and table name
    private $conn;
    private $table_name = "project";
    // object properties
    public $id;
    public $name;
    public $desc;
    public $impact;
    public $front_img;
    public $modal_img;

    // constructor with $db as database connection
    public function __construct($db)
    {
        $this->conn = $db;
    }

    function read()
    {
        // select all query
        $query = "SELECT * FROM $this->table_name p ORDER BY p.name";
        // prepare query statement
        $stmt = $this->conn->prepare($query);
        // execute query
        $stmt->execute();
        return $stmt;
    }
}
