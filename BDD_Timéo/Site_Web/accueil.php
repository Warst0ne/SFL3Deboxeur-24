<?php
$page = "accueil";

require 'classeGabarit.php';

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
    <h1 class="logo">Accueil</h1>
    </div>
    <?php include('header.php'); ?>
    <?php
    if (strcmp($_SESSION['profil'], 'responsable') == 0) {
    $sql = "SELECT * FROM gabarit WHERE 1";
    $resultats = $conn->query($sql);
    }
    ?>
    <?php
    if (strcmp($_SESSION['profil'], 'client') == 0) {
        $userid=$_SESSION['id'];
    $sql = "SELECT recette.ref_recette ref_recette, recette.date_recette date_recette, recette.nb_gabarit nb_gabarit, gabarit.ref_gabarit ref_gabarit "
            . "FROM `recette` JOIN gabarit ON recette.gabarit_id1=gabarit.id "
            . "WHERE recette.user_id1=$userid";
    $resultats = $conn->query($sql);
    }
    ?>
    
    <div class="content">
        <?php
        if (strcmp($_SESSION['profil'], 'responsable') == 0) {
        ?>
        <table class="table">
            <thead>
                <tr>
                    <th>Reference</th>
                    <th>Hauteur</th>
                    <th>Largeur</th>
                    <th>Point de prise axe x</th>
                    <th>Point de prise axe y</th>
                    <th>Point de prise axe z</th>
                    <th>Modifier</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($gabarit = $resultats->fetch()) {
                    $idGabarit = $gabarit['id'];
                    $ref_gabarit = $gabarit['ref_gabarit'];
                    $hauteur = $gabarit['hauteur'];
                    $largeur = $gabarit['largeur'];
                    $point_prise_x = $gabarit['point_prise_x'];
                    $point_prise_y = $gabarit['point_prise_y'];
                    $point_prise_z = $gabarit['point_prise_z'];
                
                ?>
                <tr>
                    <td><?php echo $ref_gabarit?></td>
                    <td><?php echo $hauteur?></td>
                    <td><?php echo $largeur?></td>
                    <td><?php echo $point_prise_x?></td>
                    <td><?php echo $point_prise_y?></td>
                    <td><?php echo $point_prise_z?></td>
                    <td><a class="button" href="modifier.php?id=<?= $idGabarit; ?>">Modifier</a></td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
        <?php
        }
        ?>
        <?php
        if (strcmp($_SESSION['profil'], 'client') == 0) {
        ?>
        <table class="table">
                <thead>
                    <tr>
                        <th>Reference</th>
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
                            <td><?php echo $ref_recette ?></td>
                            <td><?php echo $nb_gabarit ?></td>
                            <td><?php echo $date_recette ?></td>
                            <td><?php echo $ref_gabarit ?></td>
                            <?php } ?>
                        </tr>
                </tbody>
            </table>
        <?php
        }
        ?>
    </div>
    
<?php include('footer.php'); ?>
    
</body>