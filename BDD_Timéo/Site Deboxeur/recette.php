<?php
include("header.inc.php");

require "login.php";
if(!isset($_SESSION['user'])){
    header("location: login_page.php");
    exit();
}

if(isset($_GET['logout'])){
    logoutUser();
}
?>

<table>
    <tr id="Rtable">
        <td>nom de la recette</td>
        <td>Nombre de Gabarit</td>
        <td>Heure de fin de recette</td>
    </tr>
    <?php
    $sql = "SELECT * FROM `recette` ";
    $resultat = $connexion->query($sql);

    while ($recette = $resultat->fetch()) {
        $id = $recette["id"];
        $ref = $recette["ref_recette"];
        $nb_gabarit = $recette["nb_gabarit"];
        $dateRecete = $recette["date_recette"];
    ?>
        <tr id="BddTable">
            <td><?= $ref ?></td>
            <td><?= $nb_gabarit ?></td>
            <td><?= $dateRecete ?></td>
        </tr>
    <?php
    }
    ?>
</table>

<!-- Bouton pour créer une nouvelle recette -->
<div style="text-align: center; margin-top: 20px;">
    <form action="creer_recette.php" method="get">
        <button type="submit" style="font-size: 1.2em;">Créer une nouvelle recette</button>
    </form>
</div>
