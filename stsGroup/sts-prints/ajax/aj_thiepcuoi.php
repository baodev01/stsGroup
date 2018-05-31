<?php
header('Content-Type: application/json');

    include '../includes/cm_con.php';
    try {
        $conn = CMyPDO::getConnection();

        $type_name_code = 0;
        $color_name_code = 0;

        if(isset($_POST['type_name'])) {
            $type_name_code = intval($_POST['type_name']);
        }

        if(isset($_POST['color_name'])) {
            $color_name_code = intval($_POST['color_name']);
        }

        $sql = "SELECT key_code,price,image_name FROM tb_thiepcuoi ";
        if($type_name_code != 0 && $color_name_code != 0) {
            $sql = $sql . " WHERE thiepcuoi_type=" .  $type_name_code . " AND color=" .  $color_name_code;
        } else if($type_name_code != 0 ){
            $sql = $sql . " WHERE thiepcuoi_type=" .  $type_name_code;
        } else if($color_name_code != 0 ){
            $sql = $sql . " WHERE color=" .  $color_name_code;
        }
        
        $statement = $conn->prepare($sql);
        $statement->execute();
        $results = $statement->fetchAll(PDO::FETCH_ASSOC);
        
        echo json_encode($results);
        
        CMyPDO::closeConnection($conn);

    }
    catch(PDOException $e)
    {
        CMyPDO::closeConnection($conn);
    }

?>