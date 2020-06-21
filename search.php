<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>Serach</title>
  <link rel="stylesheet" href="CSS/style.css" />
  
</head>
<body>

<!-- Head[Start] -->
<header class="h_kern">
    <h1 class="logo_title">MR.Database</h1>
  <nav class="kern_nav">
      <ul class="kern_nav_list">
      <li><a href="select_log.php">All list</a></li>
      <li><a href="kern.php">Contribute</a></li>
      <li><a href="select_u.php">Edit/Delete</a></li>
      <li><a href="user_index.php">Back to Top</a></li>
      <li><a href="logout.php">LOGOUT</a></li>
      </ul>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->

<form method="post" action="search_act.php">
  <div class="kern_r_form">
   <fieldset>
    <legend>Search Kern Data</legend>  
    <!-- <label>Genre &ensp; <select name="genre" id="genre">
        <option disabled selected value>Choose...</option>
        <option value="Classical">Classical</option>
        <option value="FilmScore">FilmScore</option>
        <option value="EthnicMusic">Ethnic Music</option>
    </select></label><br>
     <label>Score Title &ensp; <input type="text" name="s_title"></label><br> -->
     <!-- <label>Opus Title &ensp; <input type="text" name="o_title"></label><br> -->
     <label>Composer &ensp; <input type="text" name="composer"></label><br>
     <!-- <label class="label">Kern Data&ensp; <textArea name="kern" rows="10" cols="40"></textArea></label><br> -->
     <input type="submit" value="Search">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>