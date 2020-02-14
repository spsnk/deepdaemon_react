<?php
class Project
{
    // database connection and table name
    private $conn;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function read_all()
    {
        // select all query
        $query = "SELECT p.*
                    FROM project p
                    ORDER BY p.name;";
        // prepare query statement
        $stmt = $this->conn->prepare($query);
        // execute query
        $stmt->execute();
        $this->parse_all($stmt);
    }

    public function read_by_state($state)
    {
        // select all query
        $query = "SELECT *
                    FROM project
                    WHERE state='$state'
                    ORDER BY name;";
        // prepare query statement
        $stmt = $this->conn->prepare($query);
        // execute query
        $stmt->execute();
        
        $this->parse_all($stmt);
    }

    public function read($id)
    {
        $query = "SELECT p.id, p.name, p.`desc`, p.impact, p.modal_type, p.modal_media, p.link,
                    GROUP_CONCAT(DISTINCT CONCAT(member.name, ' ', member.lastname) ORDER BY member.lastname) AS members,
                    GROUP_CONCAT(DISTINCT tech.name ORDER BY tech.name) as tech_short,
                    GROUP_CONCAT(DISTINCT tech.desc ORDER BY tech.name) as tech_long
                  FROM project p
                  LEFT JOIN project_tech ON project_tech.id_project = p.id
                  LEFT JOIN tech ON tech.id = project_tech.id_tech
                  LEFT JOIN project_member ON project_member.id_project = p.id
                  LEFT JOIN member ON project_member.id_member = member.id
                  WHERE p.id = $id
                  GROUP BY p.id
                  ORDER BY p.name;";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        $this->parse($stmt);
    }

    private function parse($stmt)
    {
        $num = $stmt->rowCount();
        if ($num > 0) {
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                extract($row);
                $project = array(
                    "id" => $id,
                    "name" => $name,
                    "desc" => $desc,
                    "impact" => $impact,
                    "members" => is_null($members) ? [] : explode(",", $members),
                    "tech_short" => is_null($tech_short) ? [] : explode(",", $tech_short),
                    "tech_long" => is_null($tech_long) ? [] : explode(",", $tech_long),
                    "modal_media" => $modal_media,
                    "modal_type" => $modal_type,
                    "link" => $link
                );
            }
            http_response_code(200);
            echo json_encode($project);
        } else {
            http_response_code(404);
            echo json_encode(
                array("message" => "No projects found.")
            );
        }
    }

    private function parse_all($stmt)
    {
        $num = $stmt->rowCount();
        if ($num > 0) {
            $projects = array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                extract($row);
                $project = array(
                    "id" => $id,
                    "name" => $name,
                    "desc" => $desc,
                    "state" => $state,
                    "impact" => $impact,
                    "front_img" => $front_img,
                    "modal_media" => $modal_media,
                    "modal_type" => $modal_type,
                    "link" => $link,
                );
                array_push($projects, $project);
            }
            http_response_code(200);
            echo json_encode($projects);
        } else {
            http_response_code(404);
            echo json_encode(
                array("message" => "No projects found.")
            );
        }
    }
}
