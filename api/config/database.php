<?php

class Database{

    private $host;
    private $db_name;
    private $username;
    private $password;
    public $conn;

    // getting database credentials from json file
    public function __construct() {
        $json = file_get_contents("./credentials.json");
        $credentials     = json_decode($string,true);
        $this->$host     = $credentials['host'];
        $this->$db_name  = $credentials['database'];
        $this->$username = $credentials['user'];
        $this->$password = $credentials['password'];
    }

    // get the database connection
    public function getConnection(){
        $this->conn = null;
        try
        {
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
            $this->conn->exec("set names utf8");
        }
        catch(PDOException $exception)
        {
            echo "Connection error: " . $exception->getMessage();
        }
        return $this->conn;
    }
}
?>
