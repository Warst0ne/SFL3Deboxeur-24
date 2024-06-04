<?php
include("header.inc.php");
include("database.inc.php");


if(isset($_GET['logout'])){
    logoutUser();
}

// Vérification des données soumises via le formulaire
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Assure-toi que les données du formulaire sont définies
    if (isset($_POST['ref_recette']) && isset($_POST['nb_gabarit']) && isset($_POST['date_recette'])) {
        // Récupère les données du formulaire
        $ref_recette = $_POST['ref_recette'];
        $nb_gabarit = $_POST['nb_gabarit'];
        $date_recette = $_POST['date_recette'];

        // Insérer les données dans la base de données
        $sql = "INSERT INTO recette (ref_recette, nb_gabarit, date_recette) VALUES (:ref_recette, :nb_gabarit, :date_recette)";
        $stmt = $connexion->prepare($sql);
        $stmt->bindParam(':ref_recette', $ref_recette);
        $stmt->bindParam(':nb_gabarit', $nb_gabarit);
        $stmt->bindParam(':date_recette', $date_recette);

        $stmt->execute();

        // Rediriger vers la page d'accueil ou une autre page après la création de la recette
        header("Location: recette.php");
        exit();
    }
}
?>

<!DOCTYPE html>
<html lang="fr">
<body>
    
    <link rel="stylesheet" href="recette.css">

    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <h2>Créer une nouvelle recette</h2>
        <div>
            <label for="ref_recette">Nom de la recette :</label>
            <input type="text" name="ref_recette" id="ref_recette" required>
        </div>
        <div>
            <label for="nb_gabarit">Nombre de Gabarit :</label>
            <input type="number" name="nb_gabarit" id="nb_gabarit" required>
        </div>
        <div>
            <label for="date_recette">Heure de fin de recette :</label>
            <input type="datetime-local" name="date_recette" id="date_recette" required>
        </div>
        <div>
            <button type="submit" style="font-size: 1.2em;">Créer la recette</button>
        </div>
    </form>
</body>
</html>
