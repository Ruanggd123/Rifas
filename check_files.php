<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
header('Content-Type: text/plain; charset=utf-8');

echo "=== Debugging class/Main.php ===\n";

// Let's try to include Main.php and see if there is any syntax error or compilation failure
try {
    if (file_exists('class/Main.php')) {
        echo "class/Main.php exists.\n";
        include_once 'class/Main.php';
        echo "class/Main.php included successfully!\n";
    } else {
        echo "class/Main.php does NOT exist!\n";
    }
} catch (Throwable $e) {
    echo "ERROR during include: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine() . "\n";
}

echo "\n=== Debugging classes/Master.php ===\n";
try {
    if (file_exists('classes/Master.php')) {
        echo "classes/Master.php exists.\n";
        include_once 'classes/Master.php';
        echo "classes/Master.php included successfully!\n";
    } else {
        echo "classes/Master.php does NOT exist!\n";
    }
} catch (Throwable $e) {
    echo "ERROR during include: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine() . "\n";
}

?>
