<?php
$page = "creer-recette";

require 'classeRecette.php';
include 'connexion.inc.php';

session_start();

// vérification de la session
if(isset($SESSION['username'])){
    header("location:connexion.php");
}

// envoi de la requête

if (isset($_GET['action']) && $_GET['action'] == "add") {
    $ref_recette = ($_POST['ref_recette']);
    
    classeRecette::ajouterRecette($ref_recette, $nb_gabarit, $gabarit_id1);
    header("Location:client.php");
}

$sql = "SELECT * FROM gabarit";
        $resultats = $conn->query($sql);
        
//while ($gabarit = $resultats->fetch()) {
  //  $ref_gabarit = $gabarit['ref_gabarit'];
//}
        
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
    <h1 class="logo">Création recette</h1>
    </div>
    <?php include('header.php'); ?>
    
    <div class="content">
        <form class="form" action="creer-recette.php?action=add" method="POST"> 
            <div class="formulaire">
                <div class="boite">
                    <h1>Recette</h1>
                </div>
                <div class="separation"></div>
                <div class="boite">
                    <label>Reference</label>
                    <input id="ref_recette" type="text" name="ref_recette" required />
                </div>
                <div class="boite">
                    <label>Nombre de gabarits</label>
                    <input id="nb_gabarit" type="text" name="nb_gabarit" required />
                </div>
                <div class="boite">
                    <label>Gabarit</label>
                    <select>
                        <?php
                        while($gabarit = $resultats-> fetch()){
                            $ref_gabarit=$gabarit['ref_gabarit'];
                            echo $ref_gabarit;
                        }
                        ?>
                    </select>
                    <input id="ref_gabarit" type="data" value="<?php echo $ref_gabarit; ?>" name="ref_gabarit" required />
                </div>
            </div>
            <input type="submit" id="submit" value="Enregistrer" />
        </form>
    </div>
    
<?php include('footer.php'); ?>

</body>>