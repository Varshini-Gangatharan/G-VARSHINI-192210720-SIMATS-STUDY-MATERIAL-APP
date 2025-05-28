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

// Fetch all departments
$sql = "SELECT id, title, subtitle FROM department ORDER BY id DESC";
$result = $conn->query($sql);

$departments = [];

if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $departments[] = $row;
    }

    echo json_encode([
        'status' => true,
        'message' => 'Departments retrieved successfully',
        'data' => $departments
    ]);
} else {
    echo json_encode([
        'status' => false,
        'message' => 'No departments found',
        'data' => []
    ]);
}

$conn->close();
?>
