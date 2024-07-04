<?php
include 'conn.php';

// Retrieve data
$sql = "SELECT Books.Title, Books.Price, Books.Rating, Books.YearOfPublication, Books.Genre, Authors.AuthorName 
        FROM Books
        JOIN Authors ON Books.AuthorID = Authors.AuthorID";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Books List</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1 class="my-4">Books List</h1>
        <div class="row">
            <?php
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<div class='col-md-3'>";
                    echo "<div class='card mb-4'>";
                    echo "<div class='card-body'>";
                    echo "<h5 class='card-title'>" . $row["Title"] . "</h5>";
                    echo "<h6 class='card-subtitle mb-2 text-muted'>Author: " . $row["AuthorName"] . "</h6>";
                    echo "<p class='card-text'>Price: $" . $row["Price"] . "</p>";
                    echo "<p class='card-text'>Rating: " . $row["Rating"] . "</p>";
                    echo "<p class='card-text'>Year: " . $row["YearOfPublication"] . "</p>";
                    echo "<p class='card-text'>Genre: " . $row["Genre"] . "</p>";
                    echo "</div>";
                    echo "</div>";
                    echo "</div>";
                }
            } else {
                echo "<p>No results found</p>";
            }

            $conn->close();
            ?>
        </div>
    </div>
</body>
</html>
