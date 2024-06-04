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
  <tr> 
    <td>Image</td> 
    <td>Hauteur (cm)</td> 
    <td>Largeur (cm)</td>
    <td>Nom</td>

  </tr>
 <?php
            $sql = "SELECT * FROM `gabarit` ";

            $resultat = $connexion->query($sql); 

            while ($gabarit = $resultat->fetch()) {

                $id = $gabarit["id"];
                $image = $gabarit["image"];
                $hauteur = $gabarit["hauteur"];
                $largeur = $gabarit["largeur"];            
                $ref_gabarit = $gabarit["ref_gabarit"];
?>
        <tr id="BddTable">
            <td><img id="Gabarit" src="img/gabarit.png"></td>          
            <td><?= $hauteur ?></td>
            <td><?= $largeur ?></td>
            <td><?= $ref_gabarit ?></td>
        </tr>

<?php
            }
?>

</table>
