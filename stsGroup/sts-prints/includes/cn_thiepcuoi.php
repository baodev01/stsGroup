
<?php

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
    
?>
	<div id="thiepcuoi">
		<div class="gtco-container">
			<div class="row" >
			   <div class="form-group col-md-5">
			    <label for="type_name">Loại thiệp cưới</label>
			    <select name="type_name" class="form-control" id="type_name">
			    	<option value="0">Tất cả</option>
					<?php $sql = "SELECT id,type_name FROM tb_thiepcuoi_type";
							$selected = "";
							foreach ($conn->query($sql) as $row) {
								if($type_name_code==$row['id']) {
									$selected = "selected";
								} else {
									$selected = "";
								}

						        echo "<option value='" . $row['id'] . "' " . $selected . ">" . $row['type_name'] . "</option>";
						    }
					?>
			    </select>
			  </div>
			  <div class="form-group col-md-5">
			    <label for="color_name">Màu sắc</label>
			    <select name="color_name" class="form-control" id="color_name">
			    	<option value="0">Tất cả</option>
					<?php $sql = "SELECT id,color_name FROM tb_thiepcuoi_color";
							$selected = "";
							foreach ($conn->query($sql) as $row) {
								if($color_name_code==$row['id']) {
									$selected = "selected";
								} else {
									$selected = "";
								}
						        echo "<option value='" . $row['id'] . "' " . $selected . ">" . $row['color_name'] . "</option>";
						    }
					?>
			    </select>
			  </div>
			  <div class="form-group col-md-2 align-bottom" style="height: 100px;">
			  	<button type="submit" onclick="formSearch()" class="btn btn-primary align-bottom btn-search">Tìm kiếm</button>
			  </div>
			</div>
			
			<div class="row" id="dataList">
			</div>
		</div>
	</div>
	
	<!-- The Modal -->
	<div id="modalShow" class="modalShow">
	  <span class="close">&times;</span>
	  <img class="modal-content" id="modalImg">
	  <div id="modalCaption"></div>
	</div>
	<!-- Ajax -->
	<script src="js/ajax_thiepcuoi.js"></script>

<?php 
	CMyPDO::closeConnection($conn);

    }
	catch(PDOException $e)
    {
    	CMyPDO::closeConnection($conn);
    }
?>