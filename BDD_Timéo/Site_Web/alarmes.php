<?php
$page = "alarmes";

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
    <h1 class="logo">Alarmes</h1>
    </div>
    <?php include('header.php'); ?>
    
    <?php
    $sql = "SELECT alarme.date_alarme date_alarme, user.username username FROM `alarme` JOIN user ON alarme.user_id1=alarme.id "
            . "WHERE user.profil='machine';";
    $resultats = $conn->query($sql);
    ?>
    
    <div class="content">
        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Date</th>
                    <th>User</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <?php
                    while ($alarme = $resultats->fetch()) {
                        $date_alarme = $alarme['date_alarme'];
                        $username = $alarme['username'];
                    ?>
                    <td>
                        #
                    </td>
                    <td><?php echo $date_alarme?></td>
                    <td><?php echo $username?></td>
                    <?php } ?>
                </tr>
            </tbody>
        </table>
    </div>

 <?php include('footer.php'); ?>

</body>

</html>