<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style2.css">
<link rel="stylesheet" href="attendancem.css?v=<?php echo time(); ?>">
  <!--font Awesome -->

  <script src="https://kit.fontawesome.com/b50b5c3588.js" crossorigin="anonymous"></script>

  <title>Attendance login</title>
</head>

<body>
  <div class="overall">
        <div class="col-lg-5 offset-1 col-md-11 col-sm-11 col-11">
          <div class="card py-3 px-3">
            <div class="card-body text-center">
              <h2 class="font-weight-light register">Attendance login</h2>

              <form action="showattendance.php" class="form-container">


                <div class="form">
                  <input type="text" class="form-control" placeholder="Name" name="fname">
                  <br>
                  <input type="email" class="form-control" placeholder="Email-id" name="email" aria-describedby="emailHelpBox">
                  <input type="password" class="form-control my-3" placeholder="Password" name="password" aria-describedby="passwordHelpBox">
                  <br>
                  <div class="form-group form-check">
                    <form action="showattendance.php" method="post">
                      <button type="submit" class="btn btn-dark btn-sm my-3 form-control"> Show Attendance </button>
                    </form>
                  </div>

                </div>
              </form>

            </div>

          </div>
        </div>
      </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

</body>

</html>
