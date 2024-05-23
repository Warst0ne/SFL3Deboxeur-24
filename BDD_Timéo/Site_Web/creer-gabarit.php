<?php
$page = "creer-gabarit";

require 'classeGabarit.php';
include 'connexion.inc.php';

session_start();

// vérification de la session
if(isset($SESSION['username'])){
    header("location:connexion.php");
}

// envoi de la requête

if (isset($_GET['action']) && $_GET['action'] == "add") {
    $ref_gabarit = ($_POST['ref_gabarit']);
    $hauteur = ($_POST['hauteur']);
    $largeur = ($_POST['largeur']);
    
    classeGabarit::ajouterGabarit($ref_gabarit, $hauteur, $largeur, $point_prise_x, $point_prise_y, $point_prise_z);
    header("Location:accueil.php");
}
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
    <h1 class="logo">Création gabarit</h1>
    </div>
    
    <?php include('header.php'); ?>
    
    <div class="content">
        <!-- Formulaire d'ajout de gabarit -->
        
        <form class="form" action="creer-gabarit.php?action=add" method="POST"> 
            <div class="formulaire">
                <div class="boite">
                    <h1>Gabarit</h1>
                </div>
                <div class="separation"></div>
                <div class="boite">
                    <label>Reference</label>
                    <input id="ref_gabarit" type="text" name="ref_gabarit" required />
                </div>
                <div class="boite">
                    <label>Hauteur</label>
                    <input id="hauteur" type="text" placeholder="En mm" name="hauteur" required />
                </div>
                <div class="boite">
                    <label>Largeur</label>
                    <input id="largeur" type="text" placeholder="En mm" name="largeur" required />
                </div>
            </div>
            <input type="submit" id="submit" value="Enregistrer" />
            <!-- <a class="bouton" href='client.php'>Enregistrer</a> -->
        </form>
    </div>
    
<?php include('footer.php'); ?>

</body>