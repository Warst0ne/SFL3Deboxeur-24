<?php

include './connexion.inc.php';

// Vérification de la session
if (isset($_SESSION['username'])){
    header("location:connexion.php");
}

class classeGabarit {
    // Fonction permettant d'ajouter un gabarit dans la BDD
    
    static function ajouterGabarit($ref_gabarit, $hauteur, $largeur, $point_prise_x, $point_prise_y, $point_prise_z){
        require ('connexion.inc.php');
        $sql = "INSERT INTO gabarit (id, ref_gabarit, hauteur, largeur, point_prise_x, point_prise_y, point_prise_z) VALUES "
                . "(NULL, '$ref_gabarit', '$hauteur', '$largeur', '0', '0', '0');";
        $conn->query($sql);
    }
    
    // Fonction permettant de modifier un gabarit dans la BDD
    
    static function modificationGabarit($idGabarit, $point_prise_x, $point_prise_y, $point_prise_z) {
        require('connexion.inc.php');
        $sql = "UPDATE `gabarit` SET `id` = '$idGabarit', `point_prise_x` = '$point_prise_x', `point_prise_y` = '$point_prise_y',
               `point_prise_z` = '$point_prise_z'
            WHERE `id` = '$idGabarit';";
        $conn->query($sql);   
    }
}
