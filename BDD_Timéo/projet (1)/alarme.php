<?php
  include("header.inc.php");
  include("database.inc.php");
   
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
            <td>Nom</td>
            <td>Description</td>
            <td>Heure</td>
        </tr>

        <?php
            $sql = "SELECT * FROM `alarme` ";

            $resultat = $connexion->query($sql); 

            while ($alarme = $resultat->fetch()) {

                $id = $alarme["id"];

                $nom = $alarme["nom"];
                $Description = $alarme["Description"];            
                $Heure = $alarme["Heure"];
?>
        <tr id="BddTable">
            <td><?= $nom ?></td>
            <td><?= $Description ?></td>
            <td><?= $Heure ?></td>
        </tr>

<?php
            }
?>
    </table>
