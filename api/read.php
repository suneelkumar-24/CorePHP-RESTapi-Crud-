<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    
    include_once('database.php');
    include_once ('author.php');
    $database = new Database();
    $db = $database->getConnection();
    $author = new Author($db);
    $author->oid = isset($_GET['oid']) ? $_GET['oid'] : die();
    $stmt = $author->getAuthors();
    $itemCount = $stmt->rowCount();

    // echo json_encode($itemCount);
    if($itemCount > 0){
        
        $AuthorArr = array();
        $AuthorArr["oid"] =   $author->oid;
        $AuthorArr["comments"] = array();
        // $AuthorArr["itemCount"] = $itemCount;
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            extract($row);
            $e = array(
                // "id" => $id,
                "name" => $name,
                "comment" => $comment,
            );
            array_push($AuthorArr["comments"], $e);
        }
        echo json_encode($AuthorArr);
    }
    else{
        http_response_code(404);
        echo json_encode(
            array("message" => "No record found.")
        );
    }
?>