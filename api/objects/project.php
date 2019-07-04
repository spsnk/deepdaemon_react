<?php
class Project
{
    // database connection and table name
    private $conn;
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

    function read_all()
    {
        // select all query
        $query =   "SELECT p.id, p.name, p.front_img
                    FROM project p
                    ORDER BY p.name;";
        // prepare query statement
        $stmt = $this->conn->prepare($query);
        // execute query
        $stmt->execute();
        $this->parse($stmt);
    }

    function read($id)
    {
        // select all query
        $query =   "SELECT p.*
                    FROM project p
                    WHERE p.id = $id
                    ORDER BY p.name;";
        // prepare query statement
        $stmt = $this->conn->prepare($query);
        // execute query
        $stmt->execute();
        $this->parse($stmt);
    }

    private function parse($stmt)
    {
        $num = $stmt->rowCount();
        // check if more than 0 record found
        if($num>0)
        {
            // projects array
            $projects=array();
            // retrieve our table contents
            // fetch() is faster than fetchAll()
            // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                // extract row
                // this will make $row['name'] to
                // just $name only
                extract($row);

                $project=array(
                    "id"=> $id,
                    "name" => $name,
                    "desc" => $desc,
                    "impact" => $impact,
                    "front_img" => $front_img,
                    "modal_content" => $modal_content,
                    "modal_type" => $modal_type,
                    "link" => $link
                );
                array_push($projects,$project);
            }

            // set response code - 200 OK
            http_response_code(200);

            // show projects data in json format
            echo json_encode($projects);
        }
        else
        {
            // set response code - 404 Not found
            http_response_code(404);
            // tell the user no projects found
            echo json_encode(
                array("message" => "No projects found.")
            );
        }
    }
}
