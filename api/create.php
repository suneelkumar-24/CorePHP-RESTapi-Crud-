<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
    include_once('database.php');
    include_once ('author.php');
    $database = new Database();
    $db = $database->getConnection();
    $item = new Author($db);
    $data = json_decode(file_get_contents("php://input"));
    if(isset($data->oid) && isset($data->name) && isset($data->comment) )
    {
        $item->oid = $data->oid;
        $item->name = $data->name;
        $item->comment = $data->comment;
        if($item->createAuthor()){
            // echo 'Author created successfully.';
        } else{
            echo 'Author could not be created.';
        }
    }return false;

        




?>