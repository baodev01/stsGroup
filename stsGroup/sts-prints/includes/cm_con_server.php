<?php


class CMyPDO extends PDO {
    public function __construct($dsn, $username = null, $password = null, array $options = null) {
        parent::__construct($dsn, $username, $password, $options);
    }

    static function getConnection() {
        $conn=null;
        try {
        	$host = "localhost";
			$user = "id2948064_sts_print_user";
			$pass = "123456a-";
			$dbname = "id2948064_sts_printsdb";
            $conn = new CMyPDO("mysql:host=$host;dbname=$dbname;charset=UTF8",$user,$pass);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
        catch (PDOException $exc) {
            echo $exc->getMessage();
        }
        return $conn;
    }

    static function closeConnection(&$conn) {
        $conn=null;
    }
}
?>