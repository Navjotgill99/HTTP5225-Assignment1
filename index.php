<?php
// Include connection file to connect to the database
include 'conn.php';

// Retrieve data from two tables using join
$query = "SELECT Books.Title, Books.Price, Books.Rating, Books.YearOfPublication, Books.Genre, Authors.AuthorName 
        FROM Books
        JOIN Authors ON Books.AuthorID = Authors.AuthorID";
$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Books List</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .card-body {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body class="bg-light">
    <div class="bg-primary text-white text-center">
        <div class="container">
            <h1 class="display-4">Books List</h1>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <?php
            foreach($result as $book){
                echo '<div class="col-md-3">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title text-primary">' . $book['Title'] . '</h5>
                            <h6 class="card-subtitle mb-2 text-secondary"><strong>Author: </strong>' . $book["AuthorName"] . '</h6>
                            <p class="card-text"><strong>Price: </strong>$' . $book["Price"] . '</p>
                            <p class="card-text"><strong>Rating: </strong>' . $book["Rating"] . '</p>
                            <p class="card-text"><strong>Year: </strong>' . $book["YearOfPublication"] . '</p>
                            <p class="card-text"><strong>Genre: </strong>' . $book["Genre"] . '</p>';
                if ($book["Rating"] >= 4.5) {
                    echo '<p class="text-success">Highly Rated!</p>';
                } elseif ($book["Rating"] >= 3.5) {
                    echo '<p class="text-info">Well Rated</p>';
                } else {
                    echo '<p class="text-warning">Moderate Rating</p>';
                }

                echo '</div>
                    </div>
                </div>';
            }
            // Close Connection
            mysqli_close($conn);
            ?>
        </div>
    </div>
    <footer class="bg-primary text-white text-center py-3 mt-5">
        <p>&copy; 2024 BookStore. All Rights Reserved.</p>
    </footer>
</body>
</html>
