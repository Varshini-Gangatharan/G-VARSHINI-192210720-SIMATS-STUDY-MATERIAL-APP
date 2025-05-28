<?php

include_once 'config.php';  // Ensure the database connection is correct

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

    // Get POST data and sanitize
    $name = isset($_POST['Name']) ? trim($_POST['Name']) : '';
    $email = isset($_POST['Email']) ? trim($_POST['Email']) : '';
    $password = isset($_POST['Password']) ? trim($_POST['Password']) : '';

    // Validate input
    if (empty($name) || empty($email) || empty($password)) {
        echo json_encode([
            'status' => false,
            'message' => 'All fields are required!'
        ]);
        exit;
    }

    // Email format check
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo json_encode([
            'status' => false,
            'message' => 'Invalid email format!'
        ]);
        exit;
    }

    // Password strength check
    if (strlen($password) < 6) {
        echo json_encode([
            'status' => false,
            'message' => 'Password must be at least 6 characters long!'
        ]);
        exit;
    }

    // Hash the password
    try {
        $hashedPassword = password_hash($password, PASSWORD_BCRYPT);
    } catch (Exception $e) {
        echo json_encode([
            'status' => false,
            'message' => 'Error hashing password: ' . $e->getMessage()
        ]);
        exit;
    }

    // Check if email already exists
    try {
        $emailCheck = $conn->prepare("SELECT * FROM signup WHERE email = ?");
        if ($emailCheck === false) {
            echo json_encode([
                'status' => false,
                'message' => 'Error preparing email check: ' . $conn->error
            ]);
            exit;
        }

        $emailCheck->bind_param("s", $email);
        $emailCheck->execute();
        $result = $emailCheck->get_result();
        if ($result->num_rows > 0) {
            echo json_encode([
                'status' => false,
                'message' => 'Email is already registered!'
            ]);
            $emailCheck->close();
            exit;
        }
        $emailCheck->close();
    } catch (Exception $e) {
        echo json_encode([
            'status' => false,
            'message' => 'Error checking email: ' . $e->getMessage()
        ]);
        exit;
    }

    // Insert new user
    try {
        $stmt = $conn->prepare("INSERT INTO signup (name, email, password) VALUES (?, ?, ?)");
        if ($stmt === false) {
            echo json_encode([
                'status' => false,
                'message' => 'Prepare failed: ' . $conn->error
            ]);
            exit;
        }

        $stmt->bind_param("sss", $name, $email, $hashedPassword);

        if ($stmt->execute()) {
            echo json_encode([
                'status' => true,
                'message' => 'Signup successful!'
            ]);
        } else {
            echo json_encode([
                'status' => false,
                'message' => 'Execution failed: ' . $stmt->error
            ]);
        }

        $stmt->close();
    } catch (Exception $e) {
        echo json_encode([
            'status' => false,
            'message' => 'Signup error: ' . $e->getMessage()
        ]);
    }

    $conn->close();

} else {
    echo json_encode([
        'status' => false,
        'message' => 'Invalid request method!'
    ]);
}
?>