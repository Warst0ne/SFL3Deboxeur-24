<?php
  include("header.inc.php");
  include("database.inc.php");

  try {
    // Initialisation des variables
    $count_articles = 0;
    $error = '';

    // Préparation de la requête SQL
    $stmt = $connexion->prepare("SELECT COUNT(*) AS nb_article FROM article ORDER BY id DESC");

    // Vérification que la préparation a été réussie
    if (!$stmt) {
        throw new Exception('Erreur de préparation de la requête');
    }

    // Exécution de la requête SQL
    $stmt->execute();

    // Récupération du résultat
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    // Vérification que le résultat a été récupéré
    if (!$result) {
        throw new Exception('Erreur de récupération du résultat');
    }

    // Le nombre d'articles est stocké dans la variable $count_articles
    $count_articles = $result['nb_article'];
    
} catch (PDOException $e) {
    // En cas d'erreur PDO, la variable $error contiendra le message d'erreur
    $error = "Erreur PDO: " . $e->getMessage();
} catch (Exception $e) {
    // En cas d'erreur générale, la variable $error contiendra le message d'erreur
    $error = "Erreur: " . $e->getMessage();
}
   
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
  <tr> 
    <td>Nombre d'article</td> 
    <td>reference de l'article</td> 
    <td>Ordre</td>
    <td>Nombre total</td>
    
  </tr>
 <?php
            $sql = "SELECT * FROM `article` ";

            $resultat = $connexion->query($sql); 
          

            while ($article = $resultat->fetch()) {

                $ID = $article["ID"];       
                $nb_article = $article["nb_article"];
                $ref_article = $article["ref_article"];
                
?>
        <tr id="BddTable">         
            <td><?= $nb_article ?></td>
            <td><?= $ref_article ?></td>
            <td><?= $ID?></td>
           <td><?= $count_articles ?></td>
        </tr>

<?php
            }
?>

</table>