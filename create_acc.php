<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <title>Create an account</title>
  <link rel="stylesheet" href="CSS/style.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
  <script type="text/javascript">
    //password check//
    $(document).ready(function() {
      $('#pass').keyup(function() {
        $('#check').html(checkStrength($('#pass').val()))
      })

      function checkStrength(password) {
        var strength = 0
        if (password.length < 6) {
          $('#check').removeClass()
          $('#check').addClass('short')
          $("#pass_ad").html("Password must be 6 or more characters with a mix of letters, numbers & symbols")
          return 'Too Short'
        }
        if (password.length > 7) strength += 1
        // If password contains both lower and uppercase characters, increase strength value.
        if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/)) strength += 1
        // If it has numbers and characters, increase strength value.
        if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/)) strength += 1
        // If it has one special character, increase strength value.
        if (password.match(/([!,%,&,@,#,$,^,*,?,_,~])/)) strength += 1
        // If it has two special characters, increase strength value.
        if (password.match(/(.*[!,%,&,@,#,$,^,*,?,_,~].*[!,%,&,@,#,$,^,*,?,_,~])/)) strength += 1
        // Calculated strength value, we can return messages
        // If value is less than 2
        if (strength < 2) {
          $('#check').removeClass()
          $('#check').addClass('weak')
          $("#pass_ad").html("Password must contain a capital letter, a number and a special character.")
          $("#create_btn").hide()
          return 'Weak'
        } else if (strength == 2) {
          $('#check').removeClass()
          $('#check').addClass('good')
          $("#pass_ad").html("")
          $("#create_btn").show()
          return 'Good'
        } else {
          $('#check').removeClass()
          $('#check').addClass('strong')
          $("#create_btn").show()
          return 'Strong'
        }
      }
    });
  </script>
</head>

<body>

  <!-- Head[Start] -->
  <header class="h_kern">
    <h1 class="logo_title">MR.Database</h1>
    <nav class="kern_nav">
      <ul class="kern_nav_list">
        <li><a href="login.php">Back to Top</a></li>
      </ul>
    </nav>
  </header>
  <!-- Head[End] -->

  <!-- Main[Start] -->
  <h3 class="to_user">Join Now!</h3>

  <form method="post" action="member_insert.php" class="c_a_form">
    <div class="blue_form">
      <h3 class="c_a_ex">Create your MR.Database Account
        <div class="logo3">
        </div>
      </h3>
      <input type="text" placeholder="Name" name="u_name" required><br>
      <input type="email" placeholder="Email" name="u_mail" required><br>
      <input type="password" placeholder="password" name="u_pw" id="pass" required><br>
      <span id="check"></span> <span id="pass_ad"></span><br>
      <input type="hidden" name="life_flg" value="0">
    </div>
    <input type="submit" value="Create" id="create_btn">
  </form>

  <!-- Main[End] -->


</body>

</html>