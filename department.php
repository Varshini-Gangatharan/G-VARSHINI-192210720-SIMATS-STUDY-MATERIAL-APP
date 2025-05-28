<?php

include_once 'config.php'; // Make sure this contains $conn for DB connection

// Check DB connection
if ($conn->connect_error) {
    echo json_encode([
        'status' => false,
        'message' => 'Connection failed: ' . $conn->connect_error
    ]);
    exit;
}

// Accept only POST requests
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Get and sanitize inputs
    $title = isset($_POST['title']) ? trim($_POST['title']) : '';
    $subtitle = isset($_POST['subtitle']) ? trim($_POST['subtitle']) : '';

    // Validate inputs
    if (empty($title) || empty($subtitle)) {
        echo json_encode([
            'status' => false,
            'message' => 'Both title and subtitle are required!'
        ]);
        exit;
    }

    // Prepare and insert
    $stmt = $conn->prepare("INSERT INTO department (title, subtitle) VALUES (?, ?)");
    if ($stmt === false) {
        echo json_encode([
            'status' => false,
            'message' => 'Prepare failed: ' . $conn->error
        ]);
        exit;
    }

    $stmt->bind_param("ss", $title, $subtitle);

    if ($stmt->execute()) {
        echo json_encode([
            'status' => true,
            'message' => 'Department added successfully!'
        ]);
    } else {
        echo json_encode([
            'status' => false,
            'message' => 'Insert failed: ' . $stmt->error
        ]);
    }

    $stmt->close();
    $conn->close();

} else {
    echo json_encode([
        'status' => false,
        'message' => 'Invalid request method!'
    ]);
}
?>
