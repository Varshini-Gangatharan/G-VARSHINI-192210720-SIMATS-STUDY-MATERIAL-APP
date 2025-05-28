<?php

header('Content-Type: application/json');

include_once 'config.php'; // Ensure this defines $conn

// Check DB connection
if ($conn->connect_error) {
    echo json_encode([
        'status' => false,
        'message' => 'Connection failed: ' . $conn->connect_error,
        'data' => []
    ]);
    exit;
}

// Only allow GET request
if ($_SERVER['REQUEST_METHOD'] !== 'GET') {
    echo json_encode([
        'status' => false,
        'message' => 'Invalid request method!',
        'data' => []
    ]);
    exit;
}

// Fetch all subject codes and names
$sql = "SELECT id, subcode, subname FROM cse_core ORDER BY id DESC";
$result = $conn->query($sql);

$subjects = [];

if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $subjects[] = $row;
    }

    echo json_encode([
        'status' => true,
        'message' => 'Subjects retrieved successfully',
        'data' => $subjects
    ]);
} else {
    echo json_encode([
        'status' => false,
        'message' => 'No subjects found',
        'data' => []
    ]);
}

$conn->close();
?>
