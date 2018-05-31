<?php
if($_POST)
{
    include '../includes/cm_con.php';
    try {
        $conn = CMyPDO::getConnection();

        $sdt = "";
        $name = "";

        if(isset($_POST['sdt'])) {
            $sdt = trim($_POST['sdt']);
            $sdt = substr($sdt,0,50);
        }

        if(isset($_POST['name'])) {
            $name = trim($_POST['name']);
            $name = substr($name,0,50);
        }

        if($sdt != NULL) {

            $statement = $conn->prepare("INSERT INTO tb_subscribe(name, sdt) VALUES(:name, :sdt)");
            $statement->execute(array(
                "name" => $name,
                "sdt" => $sdt
            ));
            
            echo 'true';
        }

        CMyPDO::closeConnection($conn);

    }
    catch(PDOException $e)
    {
        CMyPDO::closeConnection($conn);
    }
}
?>