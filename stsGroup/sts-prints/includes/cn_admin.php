<div id="thiepcuoi">
  <div class="gtco-container">
<table class="table table-striped">
  <thead>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Phone</th>
      <th>Note</th>
    </tr>
  </thead>
  <tbody>
<?php 
try {
      $conn = CMyPDO::getConnection();
      $sql = "SELECT id,name,sdt,note FROM tb_subscribe ORDER BY id DESC";

        foreach ($conn->query($sql) as $row) {
        ?>
          <tr>
            <td><?php echo $row['id'] ?></td>
            <td><?php echo $row['name'] ?></td>
            <td><?php echo $row['sdt'] ?></td>
            <td><?php echo $row['note'] ?></td>
          </tr>
        <?php
        }

      CMyPDO::closeConnection($conn);
    }
    catch(PDOException $e)
    {
      CMyPDO::closeConnection($conn);
    }
?>
  </tbody>
</table>
</div>
</div>
