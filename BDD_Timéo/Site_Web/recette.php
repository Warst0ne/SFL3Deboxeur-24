<?php
$page = "alarmes";

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
    <h1 class="logo">Recette</h1>
    </div>
    <?php include('header.php'); ?>
    
    <?php
    $sql = "SELECT recette.ref_recette ref_recette, recette.nb_gabarit nb_gabarit, recette.date_recette, gabarit.ref_gabarit ref_gabarit "
            . "FROM `recette` JOIN gabarit ON recette.gabarit_id1=gabarit.id;";
    $resultats = $conn->query($sql);
    ?>
    
    <div class="content">
        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Ref recette</th>
                    <th>Nb gabarit</th>
                    <th>Date</th>
                    <th>Ref gabarit</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <?php
                    while ($recette = $resultats->fetch()) {
                        $ref_recette = $recette['ref_recette'];
                        $nb_gabarit = $recette['nb_gabarit'];
                        $date_recette = $recette['date_recette'];
                        $ref_gabarit = $recette['ref_gabarit'];
                    ?>
                    <td>#</td>
                    <td><?php echo $ref_recette?></td>
                    <td><?php echo $nb_gabarit?></td>
                    <td><?php echo $date_recette?></td>
                    <td><?php echo $ref_gabarit?></td>
                    <?php } ?>
                </tr>
            </tbody>
        </table>
    </div>
    
<?php include('footer.php'); ?>

</body>