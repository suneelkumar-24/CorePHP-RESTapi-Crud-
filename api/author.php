<?php
    class Author{
        // Connection
        private $conn;
        // Table
        private $db_table = "Author";
        // Columns
        public $id;
        public $oid;
        public $name;
        public $comment;
        // Db connection
        public function __construct($db){
            $this->conn = $db;
        }
        // GET ALL
        public function getAuthors(){
            // $sqlQuery = "SELECT id,oid,name, comment FROM " . $this->db_table . "";
            $sqlQuery = "SELECT  oid, name, age, comment FROM ". $this->db_table ." WHERE oid = ?";
            
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->bindParam(1, $this->oid);
            $stmt->execute();
            return $stmt;
        }
        // CREATE
        public function createAuthor(){
            $sqlQuery = "INSERT INTO
                        ". $this->db_table ."
                    SET
                        oid = :oid, 
                        name = :name, 
                        comment = :comment";
        
            $stmt = $this->conn->prepare($sqlQuery);
        
            // sanitize
            $this->oid=htmlspecialchars(strip_tags($this->oid));
            $this->name=htmlspecialchars(strip_tags($this->name));
            $this->comment=htmlspecialchars(strip_tags($this->comment));
        
            // bind data
            $stmt->bindParam(":oid", $this->oid);
            $stmt->bindParam(":name", $this->name);
            $stmt->bindParam(":comment", $this->comment);
        
            if($stmt->execute()){
                $id['id']=$this->conn->lastInsertId();
                echo  json_encode($id,JSON_FORCE_OBJECT );
               return true;
            }
            return false;
        }
        // READ single
        public function getSingleAuthor(){
            $sqlQuery = "SELECT
                        -- id, 
                        oid, 
                        name, 
                        -- age, 
                        comment
                        -- created
                      FROM
                        ". $this->db_table ."
                    WHERE 
                       oid = ?";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->bindParam(1, $this->oid);
            $stmt->execute();
            $dataRow = $stmt->fetch(PDO::FETCH_ASSOC);
            
            $this->name = $dataRow['name'];
            $this->oid = $dataRow['oid'];
            // $this->age = $dataRow['age'];
            $this->comment = $dataRow['comment'];
            // $this->created = $dataRow['created'];
        }        
       
            }
?>