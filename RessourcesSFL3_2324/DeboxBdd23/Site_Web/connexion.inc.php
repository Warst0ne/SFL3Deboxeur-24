<?php
$hote='localhost'; // Le chemin vers le serveur
$port='3306'; // Le port 
$bdd='sfl3_deboxeur'; // Le nom de la bdd
$username='root'; // Nom d'utilisateur pour se connecter
$password=''; // Mot de passe pour se connecter
$conn = new PDO('mysql:host='.$hote.';port='.$port.';dbname='.$bdd, $username, $password);