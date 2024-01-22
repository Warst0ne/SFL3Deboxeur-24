<?php
    session_start();
    include 'connexion.inc.php';
?>

<html>
    <head>
        <link href="css/deboxeur.css" rel="stylesheet">
    </head>

    <body>
        <div id="container1">
            <!-- zone de connexion -->

            <form class="form" action="verification.php" method="POST">
                <div class="formulaire">
                    <div class="boite">
                        <h1>Connexion</h1>
                    </div>
                    <div class="separation"></div>
                    <div class="boite">
                    <label><b>Nom d'utilisateur</b></label>
                    <input type="text" placeholder="Entrer le nom d'utilisateur" name="username" required />
                    </div>
                    <div class="boite">
                    <label><b>Mot de passe</b></label>
                    <input type="password" placeholder="Entrer le mot de passe" name="password" required />
                    </div>
                    <div class="boite">
                    <input type="submit" id="submit" value="CONNEXION" />
                    </div>

                <?php
                if (isset($_GET['erreur'])) {
                    $err = $_GET['erreur'];
                    if ($err == 1 || $err == 2) {
                        echo "<p style='color:red'>Utilisateur ou mot de passe incorrect</p>";
                    }
                }
                ?>
                </div>
            </form>
        </div>
    </body>
</html>
