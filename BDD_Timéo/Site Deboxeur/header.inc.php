<!DOCTYPE html>
<html lang="en">
<?php
    header("refresh: 120");
?>
    <head>
        <meta charset="UTF-8">
        <title>Castel Frères</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="sidebar.css">
        <link rel="icon" href="img/icon2.png" type="image/icon.png">
        <script src="jquery.js"></script> 
        <script src="sidebar.js"></script>
    </head>
    <body>
        <div id="mySidebar" class="sidebar">
            <a href="javascript:void(0)" class="closebtn" onclick="closeSidebar()">&times;</a>
            <a href="home.php">Menu</a>
            <a href="recette.php">Recette</a>
            <a href="gabarit.php">Gabarit</a>
            <a href="alarme.php">Alarme</a>
	    <a href="?logout" id="logout">Logout</a>
        </div>
        <div id="main"></div>
            <div id="header">
                <img id="header_logo" src="img/cflogo.png">
                <input class="openbtn" type="image" src="img/menu_bars.png" onclick="openSidebar()"></button>
            </div>
        </div>
    </body>
</html>
