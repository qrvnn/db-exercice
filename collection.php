<div id="collection">
    <h2>Ma collection</h2>
    <?php
    $link = mysqli_connect("localhost", "root", "", "test");
    $result = mysqli_query($link, "SELECT name FROM artist");
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<div>" . $row["name"] . "</div>";
    }
    ?>

</div>