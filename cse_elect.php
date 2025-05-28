<?php

include_once 'config.php'; // Make sure this defines $conn

// Check DB connection
if ($conn->connect_error) {
    echo json_encode([
        'status' => false,
        'message' => 'Connection failed: ' . $conn->connect_error
    ]);
    exit;
}

// Only allow GET request
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $sql = "SELECT subcode, subname FROM cse_elect";
    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
        $data = [];
        while ($row = $result->fetch_assoc()) {
            $data[] = [
                'subcode' => $row['subcode'],
                'subname' => $row['subname']
            ];
        }

        echo json_encode([
            'status' => true,
            'message' => 'Elective subjects fetched successfully',
            'data' => $data
        ]);
    } else {
        echo json_encode([
            'status' => false,
            'message' => 'No elective subjects found',
            'data' => []
        ]);
    }

    $conn->close();
} else {
    echo json_encode([
        'status' => false,
        'message' => 'Invalid request method',
        'data' => []
    ]);
}
?>
