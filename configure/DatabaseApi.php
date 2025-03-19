<?php

class Database{

    private $host = 'localhost';
    private $username = 'root';
    private $password = '';
    private $database = 'allomyprof';
    
    protected $connection;
    
    public function __construct(){

        if (!isset($this->connection)) {
            $this->connection = new PDO("mysql:host=$this->host;dbname=$this->database", $this->username, $this->password);
            $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }    
        
        // return $this->connection;
    }

}
?>