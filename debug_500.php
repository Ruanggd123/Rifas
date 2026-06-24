<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
header('Content-Type: text/plain; charset=utf-8');

echo "=== System Info ===\n";
echo "PHP Version: " . phpversion() . "\n";

try {
    echo "1. Loading Main.php...\n";
    require_once __DIR__ . '/class/Main.php';
    
    echo "2. Instantiating Main...\n";
    $main = new Main();
    
    echo "3. Mocking POST data...\n";
    $prod_qry = $main->conn->query("SELECT id FROM product_list LIMIT 1");
    $product_id = 0;
    if ($prod_qry && $prod_qry->num_rows > 0) {
        $product_id = $prod_qry->fetch_assoc()['id'];
    }
    
    $_POST['product_id'] = $product_id;
    $_POST['valorUpsell'] = 0;
    $_POST['qtdUpsell'] = 0;
    $_POST['ref'] = '';
    
    echo "Using Product ID: " . $product_id . "\n";
    
    echo "4. Executing place_order()...\n";
    $result = $main->place_order();
    echo "\nResult:\n" . $result . "\n";
    
} catch (Throwable $e) {
    echo "\nFATAL ERROR: " . $e->getMessage() . "\n";
    echo "File: " . $e->getFile() . "\n";
    echo "Line: " . $e->getLine() . "\n";
    echo "Trace:\n" . $e->getTraceAsString() . "\n";
}
?>
