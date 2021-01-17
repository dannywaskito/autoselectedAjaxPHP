<?php 
require_once "koneksi.php";
 ?>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Auto Selected Benua & Negara</title>
    <link href="https://getbootstrap.com/docs/3.4/dist/css/bootstrap.min.css" rel="stylesheet">
  </head>

  <body>

  <div class="container">
  <h4>Auto Selected Benua & Negara With Ajax & PHP</h4>
  <div class="form-group">
  <div class="col-md-5">
  <label>Pilih Benua</label>
  <?php 
  $sql_benua = mysqli_query($con, 'select * from benua');    
  ?>
    <form action="" method="post">
    <select class="form-control" name="benua" id="benua">
      <option value="">Pilih Benua</option>
      <?php while($row_benua = mysqli_fetch_array($sql_benua)){ ?>
      <option value="<?php echo $row_benua['id'] ?>"><?php echo $row_benua['nama_benua'] ?></option>
    <?php } ?>
    </select>
    <label>Negara</label>
        <select class="form-control" name="negara" id="negara">
      <option value="">Pilih Negara</option>
      <option></option>
    </select>
    </form>
  </div>
  </div>


    </div> 
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


    <script>
      $(document).ready(function(){
        $('#benua').change(function(){
      var id_benua  = $(this).val();  
      $.ajax({
            type: 'POST',
            url: 'negara.php',
            data: 'benua_id='+id_benua,
            success: function(response){
            $('#negara').html(response);
            }

            });  
          })
      });

    </script>
  </body>
</html>
