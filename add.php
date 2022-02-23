<?php

$link = mysqli_connect("localhost", "root", "", "test");
if (mysqli_connect_errno()) {
    echo '<br>Echec de la connection: ' . mysqli_connect_error();
    exit();
} else {
    mysqli_query($link, "INSERT INTO artist(name, birthday) VALUES ('" . $_GET["artistName"] . "', '" . $_GET["artistBirthday"] . "')");
}

header("Location: index.php");
