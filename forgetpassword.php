<?php

include_once 'config.php'; // Ensure $conn is defined

header("Content-Type: application/json");

// Check DB connection
if ($conn->connect_error) {
    echo json_encode(['status' => false, 'message' => 'Connection failed: ' . $conn->connect_error]);
    exit;
}

// Accept only POST requests
if ($_SERVER["REQUEST_METHOD"] !== "POST") {
    echo json_encode(['status' => false, 'message' => 'Invalid request method!']);
    exit;
}

// Get and sanitize input
$email = isset($_POST['email']) ? trim($_POST['email']) : '';
$password = isset($_POST['password']) ? trim($_POST['password']) : '';

// Validate input
if (empty($email) || empty($password)) {
    echo json_encode(['status' => false, 'message' => 'Email and password are required!']);
    exit;
}

if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    echo json_encode(['status' => false, 'message' => 'Invalid email format!']);
    exit;
}

if (strlen($password) < 6) {
    echo json_encode(['status' => false, 'message' => 'Password must be at least 6 characters long!']);
    exit;
}

// Hash the password
$hashedPassword = password_hash($password, PASSWORD_BCRYPT);

// Check if email exists
$stmt = $conn->prepare("SELECT id FROM signup WHERE email = ?");
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 0) {
    echo json_encode(['status' => false, 'message' => 'Email not found!']);
    $stmt->close();
    exit;
}
$stmt->close();

// Update password
$updateStmt = $conn->prepare("UPDATE signup SET password = ? WHERE email = ?");
$updateStmt->bind_param("ss", $hashedPassword, $email);

if ($updateStmt->execute()) {
    echo json_encode(['status' => true, 'message' => 'Password updated successfully!']);
} else {
    echo json_encode(['status' => false, 'message' => 'Failed to update password: ' . $updateStmt->error]);
}

$updateStmt->close();
$conn->close();
?>
