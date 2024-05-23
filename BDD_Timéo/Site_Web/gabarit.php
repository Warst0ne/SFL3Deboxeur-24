<?php
$page = "gabarit";

require 'classeGabarit.php';

session_start();

// vérification de la session
if(isset($SESSION['username'])){
    header("location:connexion.php");
}
include 'connexion.inc.php';
?>
<html>

<head>
    <meta charset="uft-8">
    <link href="css/deboxeur.css" rel="stylesheet">
    <link href="css/header.css" rel="stylesheet"> 
    <link href="css/footer.css" rel="stylesheet"> 

    <script src="https://kit.fontawesome.com/4bb43bd834.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="left">
    <h1 class="logo">Gabarit</h1>
    </div>
    <?php include('header.php'); ?>
    
    <?php
    $sql = "SELECT * FROM gabarit WHERE 1";
    $resultats = $conn->query($sql);
    ?>
    
    <div class="content">
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Ref gabarit</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Contenu</td>
                    <td>Contenu</td>
                    <td>Contenu</td>
                </tr>
                <tr>
                    <td>Contenu</td>
                    <td>Contenu</td>
                    <td>Contenu</td>
                </tr>
                <tr>
                    <td>Contenu</td>
                    <td>Contenu</td>
                    <td>Contenu</td>
                </tr>
                <tr>
                    <td>Contenu</td>
                    <td>Contenu</td>
                    <td>Contenu</td>
                </tr>
                <tr>
                    <td>Contenu</td>
                    <td>Contenu</td>
                    <td>Contenu</td>
                </tr>
                <tr>
                    <td>Contenu</td>
                    <td>Contenu</td>
                    <td>Contenu</td>
                </tr>
            </tbody>
        </table>
    </div>
    
<?php include('footer.php'); ?>
    
</body>

</html>