<%@ page contentType="text/html; charset=UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid">
  <h1>Auto Layout Columns</h1>
  <p>In Bootstrap 4, there is an easy way to create equal width columns: just use the <code>.col-size</code> class on a specified number of col elements. Bootstrap will recognize how many columns there are, and each column will get the same width.</p>
  <p>Two columns: 50% width on all screens, except for extra small (100% width on screens less than <strong>576px</strong> wide)</p>
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm bg-success">1 of 2</div>
      <div class="col-sm bg-warning">2 of 2</div>
    </div>  
  </div>
  <br>
  
  <p>Four columns: 25% width on all screens, except for extra small (100% width on screens less than <strong>576px</strong> wide)</p>
  <div class="container-fluid">
    <div class="row">
      <div class="col col-sm bg-success">1 of 4</div>
      <div class="col col-sm bg-warning">2 of 4</div>
      <div class="col col-sm bg-success">3 of 4</div>
      <div class="col col-sm bg-warning">4 of 4</div>
    </div>  
  </div>
</div>

</body>
</html>
