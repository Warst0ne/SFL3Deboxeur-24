<header role="header">
        <nav class="menu">
            <div class="inner">
                <div class="right">
                    <a class="nav" href="accueil.php"><i class="fa-solid fa-house"></i> Accueil</a>
                    <?php
                    if (strcmp($_SESSION['profil'], 'responsable') == 0) {
                        ?>
                    <a class="nav" href="historique."><i class="fa-solid fa-calendar-days"></i> Historique</a>
                    <?php
                    }
                    ?>
                    <?php
                    if (strcmp($_SESSION['profil'], 'client') == 0) {
                        ?>
                    <a class="nav" href="creer-recette.php"><i class="fa-solid fa-folder-plus"></i> Créer Recette</a>
                    <a class="nav" href="creer-gabarit.php"><i class="fa-solid fa-bottle-water"></i> Créer Gabarit</a>
                    <?php
                    }
                    ?>
                    <a class="nav" href="deconnexion.php"><i class="fa-solid fa-door-closed"></i> Déconnexion</a>
                </div>
            </div>
        </nav>
    </header>