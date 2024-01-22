<?php

include './connexion.inc.php';

// Vérification de la session
if (isset($_SESSION['username'])){
    header("location:connexion.php");
}

class classeRecette {
    // Fonction permettant d'ajouter un gabarit dans la BDD
    
    static function ajouterRecette($ref_recette, $nb_gabarit, $gabarit_id1){
        require ('connexion.inc.php');
        $sql = "INSERT INTO recette (id, ref_recette, nb_gabarit, gabarit_id1) VALUES "
                . "(NULL, '$ref_recette', '$nb_gabarit', '$gabarit_id1');";
        $conn->query($sql);
    }
    
    // Fonction permettant de modifier un gabarit dans la BDD
    
    static function modificationRecette($idRecette, $ref_recette) {
        require('connexion.inc.php');
        $sql = "UPDATE 'recette' SET 'ref_recette' = '$ref_recette'
            WHERE 'id' = '$idRecette';";
        $conn->query($sql);
                                
    }
}
