<?php
$page = "historique";

session_start();

// vérification de la session
if(isset($SESSION['username'])){
    header("location:connexion.php");
}
include 'connexion.inc.php';
?>

<head>
    <meta charset="uft-8">
    <link href="css/deboxeur.css" rel="stylesheet">
    <link href="css/header.css" rel="stylesheet"> 
    <link href="css/footer.css" rel="stylesheet"> 

    <script src="https://kit.fontawesome.com/4bb43bd834.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="left">
    <h1 class="logo">Historique</h1>
    </div>
    <?php include('header.php'); ?>
    
    <div class="content">
        <a href="box.php"><img class="hist" src="image/boite.jpg"></a>
        <!--<a href="gabarit.php"><img class="hist" src="image/gabarit.png"></a>-->
        <a href="alarmes.php"><img class="hist" src="image/alarme.jpg"></a>
        <a href="recette.php"><img class="hist" src="image/recette.png"></a>
        
        <nav class="name">
            <div class="titleG">
                <p class="p">Box</p>
            </div>
            <div class="title">
                <p class="p">Alarme</p>
            </div>
            <div class="titleD">
                <p class="p">Recette</p>
            </div>
        </nav>
    </div>

<?php include('footer.php'); ?>

</body>