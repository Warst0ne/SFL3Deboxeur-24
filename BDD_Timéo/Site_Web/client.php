<?php
$page = "client";

require 'classeRecette.php';

session_start();

// vérification de la session
if(isset($SESSION['username'])){
    header("location:connexion.php");
}
include 'connexion.inc.php';
?>
<html>

    <head>
        <meta charset="uft-8">
        <link href="css/deboxeur.css" rel="stylesheet">
        <link href="css/header.css" rel="stylesheet"> 
        <link href="css/footer.css" rel="stylesheet"> 

        <script src="https://kit.fontawesome.com/4bb43bd834.js" crossorigin="anonymous"></script>
    </head>

    <body>
        
        <?php include('header.php'); ?>

        <?php
        $sql = "SELECT ref_recette, nb_gabarit, date_recette, ref_gabarit FROM `recette`,`gabarit` WHERE recette.gabarit_id1=gabarit.id";
        $resultats = $conn->query($sql);
        ?>

        <div class="content">
            <table>
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
                            ?>
                            <td><?php echo $ref_recette ?></td>
                            <td><?php echo $nb_gabarit ?></td>
                            <td><?php echo $date_recette ?></td>
                            <?php } ?>
                            <?php
                            while ($gabarit = $resultats->fetch()) {
                                $ref_gabarit = $gabarit['ref_gabarit'];
                            ?>
                            <td><?php echo $ref_gabarit ?></td>
                            <?php } ?>
                        </tr>
                </tbody>
            </table>
        </div>

<?php include('footer.php'); ?>

    </body>

</html>