<?php
$page = "modifier";

require 'classeGabarit.php';
include 'connexion.inc.php';

session_start();

// vérification de la session
if(isset($SESSION['username'])){
    header("location:connexion.php");
}

// envoi de la requête
$idGabarit = $_GET['id'];
$sql = "SELECT * FROM `gabarit` WHERE `id` = $idGabarit;";
$resultats = $conn->query($sql);

if (isset($_GET['id']) && isset($_GET['action']) && $_GET['action'] == "modify") {
    $idGabarit = $_GET['id'];
    $point_prise_x = ($_POST['point_prise_x']);
    $point_prise_y = ($_POST['point_prise_y']);
    $point_prise_z = ($_POST['point_prise_z']);
    
    classeGabarit::modificationGabarit($idGabarit, $point_prise_x, $point_prise_y, $point_prise_z);
    header("Location:accueil.php");
}

while ($gabarit = $resultats->fetch()) {
    $point_prise_x = $gabarit['point_prise_x'];
    $point_prise_y = $gabarit['point_prise_y'];
    $point_prise_z = $gabarit['point_prise_z'];
    
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
    <h1 class="logo">Ajout point de prise</h1>
    </div>
    <?php include('header.php'); ?>
    
    <div class="content">
        <!-- Formulaire de modification du gabarit -->
        
        <form class="form" action="modifier.php?action=modify&id=<?= $idGabarit; ?>" method="POST"> 
            <div class="formulaire">
                <div class="boite">
                    <h1>Gabarit</h1>
                </div>
                <div class="separation"></div>
                <div class="boite">
                    <label>Point de prise axe x</label>
                    <input id="point_prise_x" type="text" value="<?php echo $point_prise_x; ?>" name="point_prise_x" required />
                </div>
                <div class="boite">
                    <label>Point de prise axe y</label>
                    <input id="point_prise_y" type="text" "<?php echo $point_prise_y; ?>" name="point_prise_y" required />
                </div>
                <div class="boite">
                    <label>Point de prise axe x</label>
                    <input id="point_prise_z" type="text" "<?php echo $point_prise_x; ?>" name="point_prise_z" required />
                </div>
            </div>
            <input type="submit" id="submit" value="Enregistrer" />
        </form>
    </div>
    
<?php include('footer.php'); ?>

</body>