<?php

include_once 'config.php'; // Ensure DB connection variables are available

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

    // Get and sanitize input
    $email = isset($_POST['Email']) ? trim($_POST['Email']) : '';
    $password = isset($_POST['Password']) ? trim($_POST['Password']) : '';

    // Validate input
    if (empty($email) || empty($password)) {
        echo json_encode([
            'status' => false,
            'message' => 'Email and password are required!'
        ]);
        exit;
    }

    // Validate email format
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo json_encode([
            'status' => false,
            'message' => 'Invalid email format!'
        ]);
        exit;
    }

    // Fetch user from DB
    $stmt = $conn->prepare("SELECT id, name, email, password FROM signup WHERE email = ?");
    if ($stmt === false) {
        echo json_encode([
            'status' => false,
            'message' => 'Prepare failed: ' . $conn->error
        ]);
        exit;
    }

    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    // Check if user found
    if ($result->num_rows === 1) {
        $user = $result->fetch_assoc();

        // Verify password
        if (password_verify($password, $user['password'])) {
            echo json_encode([
                'status' => true,
                'message' => 'Login successful!',
                'data' => [
                    'id' => $user['id'],
                    'name' => $user['name'],
                    'email' => $user['email']
                ]
            ]);
        } else {
            echo json_encode([
                'status' => false,
                'message' => 'Invalid password!'
            ]);
        }

    } else {
        echo json_encode([
            'status' => false,
            'message' => 'Email not found!'
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
