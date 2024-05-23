<?php

session_start();

include 'connexion.inc.php'; // A rajouter pour avec

if (isset($_POST['username']) && isset($_POST['password'])) {

    $sql = "SELECT * FROM user where username = '" . $_POST['username'] . "' and password = '" . $_POST['password'] . "' LIMIT 1";
    $resultats = $conn->query($sql);

    if ($user = $resultats->fetch()) {

        $_SESSION['username'] = $user['username'];
        $_SESSION['id'] = $user['id'];
        $_SESSION['profil'] = $user['profil'];

        header('Location: accueil.php');
    } else {
        header('Location: connexion.php?erreur=1'); // utilisateur ou mot de passe incorrect
    }
} else {
    header('Location: recette.php'); // utilisateur ou mot de passe vide
}