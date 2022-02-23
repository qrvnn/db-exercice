<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <form action="add.php" method="get">
        <div>
            <h2>Ajouter un artiste</h2>
            <div>
                <label for="artistName">Nom</label>
                <input type="text" name="artistName" required>
            </div>
            <div>
                <label for="artistBirthday">Naissance</label>
                <input type="date" name="artistBirthday" required>
            </div>
        </div>
        <input type="submit" value="Valider">
    </form>
</body>

<?php include('collection.php') ?>

</html>