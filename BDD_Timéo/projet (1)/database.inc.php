<?php
session_start();
$hote = "localhost";
$port = "3306";
$username = "root";
$password = "";
$bdd='deboxeur_sfl3_2024';

try {
$connexion = new PDO('mysql:host='.$hote.';port='.$port.';dbname='.$bdd, $username, $password);
} catch (PDOException $e) {
    exit("Error: " . $e->getMessage());
}
?>
