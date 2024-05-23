<?php
$page = "responsable";

require 'classeGabarit.php';

session_start();

// vérification de la session
if(isset($SESSION['username'])){
    header("location:connexion.php");
}
include 'connexion.inc.php';
?>

<head>
    <meta charset="uft-8">
    <link href="css/deboxeur.css" rel="stylesheet">
    <link href="css/header.css" rel="stylesheet"> 
    <link href="css/footer.css" rel="stylesheet"> 

    <script src="https://kit.fontawesome.com/4bb43bd834.js" crossorigin="anonymous"></script>
</head>

<body>
    
    <?php include('header.php'); ?>
    
    <?php
    $sql = "SELECT * FROM gabarit WHERE 1";
    $resultats = $conn->query($sql);
    ?>
    
    <div class="content">

        <table>
            <thead>
                <tr>
                    <th>Reference</th>
                    <th>Hauteur</th>
                    <th>Largeur</th>
                    <th>Point de prise axe x</th>
                    <th>Point de prise axe y</th>
                    <th>Point de prise axe z</th>
                    <th>Modifier</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($gabarit = $resultats->fetch()) {
                    $ref_gabarit = $gabarit['ref_gabarit'];
                    $hauteur = $gabarit['hauteur'];
                    $largeur = $gabarit['largeur'];
                    $point_prise_x = $gabarit['point_prise_x'];
                    $point_prise_y = $gabarit['point_prise_y'];
                    $point_prise_z = $gabarit['point_prise_z'];
                
                ?>
                <tr>
                    <td><?php echo $ref_gabarit?></td>
                    <td><?php echo $hauteur?></td>
                    <td><?php echo $largeur?></td>
                    <td><?php echo $point_prise_x?></td>
                    <td><?php echo $point_prise_y?></td>
                    <td><?php echo $point_prise_z?></td>
                    <td><a class="button" href="modifier.php">Modifier</a></td>
                </tr>
                <?php } ?>
            </tbody>
        </table>

    </div>
    
<?php include('footer.php'); ?>
    
</body>

