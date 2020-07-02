<?php

//session idのチェック
session_start();

$u_name = $_SESSION['u_name'];
include("funcs.php"); //今は同じ階層なのでこの書き方でOK
loginCheck();
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>Serach</title>
    <link rel="stylesheet" href="CSS/style.css" />
    <link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
</head>

<body>

    <!-- Head[Start] -->
    <header class="h_kern">
        <h1 class="logo_title">MR.Database</h1>
        <nav class="kern_nav">
            <ul class="kern_nav_list">
                <li><a href="select_log.php">All list</a></li>
                <li><a href="search_log.php">Search</a></li>
                <li><a href="kern.php">Contribute</a></li>
                <li><a href="select_u.php">Edit/Delete</a></li>
                <li><a href="user_index.php">Back to Top</a></li>
                <li><a href="logout.php">LOGOUT</a></li>
            </ul>
        </nav>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $("#searchby").change(function() {
                    var searchby_val = $("#searchby").val();
                    if (searchby_val == "genre") {
                        $(".genre_s_select").show()
                        $(".s_by_btn").show()
                        $(".s_by_stitle").css("display", "none")
                        $(".s_by_stitle").val('');
                        $(".s_by_otitle").css("display", "none")
                        $(".s_by_otitle").val('');
                        $(".s_by_composer").css("display", "none")
                        $(".s_by_composer").val('');
                    } else if (searchby_val == "ScoreTitle") {
                        $(".s_by_stitle").show()
                        $(".s_by_btn").show()
                        $(".genre_s_select").css("display", "none")
                        $(".s_by_genre").val('');
                        $(".s_by_otitle").css("display", "none")
                        $(".s_by_otitle").val('');
                        $(".s_by_composer").css("display", "none")
                        $(".s_by_composer").val('');
                    } else if (searchby_val == "OpusTitle") {
                        $(".s_by_otitle").show()
                        $(".s_by_btn").show()
                        $(".genre_s_select").css("display", "none")
                        $(".s_by_genre").val('');
                        $(".s_by_stitle").css("display", "none")
                        $(".s_by_stitle").val('');
                        $(".s_by_composer").css("display", "none")
                        $(".s_by_composer").val('');
                    } else if (searchby_val == "Composer") {
                        $(".s_by_composer").show()
                        $(".s_by_btn").show()
                        $(".genre_s_select").css("display", "none")
                        $(".s_by_genre").val('');
                        $(".s_by_otitle").css("display", "none")
                        $(".s_by_otitle").val('');
                        $(".s_by_stitle").css("display", "none")
                        $(".s_by_stitle").val('');
                    }
                })
            })
        </script>
    </header>
    <!-- Head[End] -->

    <!-- Main[Start] -->
    <!--search by select btn-->
    <div class="searchmethod">
        <label for="searchby"><i class="fas fa-search">&ensp;</i>Search by</label>
        <select name="searchby" id="searchby">
            <option disabled selected value>Choose...</option>
            <option value="genre">Genre</option>
            <option value="ScoreTitle">Score Title</option>
            <option value="OpusTitle">Opus Title</option>
            <option value="Composer">Composer</option>
        </select>
    </div>


    <!--search form-->
    <form method="post" action="search_act_log.php">
        <div class="kern_s_form">
            <div class="genre_s_select">
                <select name="genre" id="genre" class="s_by_genre">
                    <option disabled selected value>Choose...</option>
                    <option value="Classical">Classical</option>
                    <option value="FilmScore">FilmScore</option>
                    <option value="EthnicMusic">Ethnic Music</option>
                </select>
            </div>
            <input type="text" name="s_title" class="s_by_stitle" placeholder="&#xF002; score title …">
            <input type="text" name="o_title" class="s_by_otitle" placeholder="&#xF002; opus title …">
            <input type="text" name="composer" class="s_by_composer" placeholder="&#xF002; composer …">
            <!-- <label class="label">Kern Data&ensp; <textArea name="kern" rows="10" cols="40"></textArea></label><br> -->
            <input type="submit" value="Search" class="s_by_btn">

        </div>
    </form>







    <!-- Main[End] -->


</body>

</html>