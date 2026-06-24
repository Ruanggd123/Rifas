<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
mysqli_report(MYSQLI_REPORT_OFF);

require_once __DIR__ . '/config.php';
require_once __DIR__ . '/classes/DBConnection.php';

$db = new DBConnection();
$conn = $db->conn;

if (!$conn) {
    die("Connection failed: database not configured.");
}

$queries = [
    "ALTER TABLE `product_list` ADD COLUMN `roleta` int(11) DEFAULT 0",
    "ALTER TABLE `product_list` ADD COLUMN `roleta_qty` varchar(255) DEFAULT '0'",
    "ALTER TABLE `product_list` ADD COLUMN `roleta_amount` varchar(255) DEFAULT '0'",
    "ALTER TABLE `product_list` ADD COLUMN `tipo_auto_cota_roleta` int(11) DEFAULT 0",
    "ALTER TABLE `product_list` ADD COLUMN `status_auto_cota_roleta` int(11) DEFAULT 0",
    "ALTER TABLE `product_list` ADD COLUMN `probabilidade_roleta` varchar(255) DEFAULT '0'",
    "ALTER TABLE `product_list` ADD COLUMN `cotas_premiadas_roleta` text DEFAULT NULL",
    "ALTER TABLE `product_list` ADD COLUMN `cotas_premiadas_descricao_roleta` text DEFAULT NULL",
    "ALTER TABLE `product_list` ADD COLUMN `cotas_premiadas_premios_roleta` text DEFAULT NULL",

    "ALTER TABLE `product_list` ADD COLUMN `box` int(11) DEFAULT 0",
    "ALTER TABLE `product_list` ADD COLUMN `box_qty` varchar(255) DEFAULT '0'",
    "ALTER TABLE `product_list` ADD COLUMN `box_amount` varchar(255) DEFAULT '0'",
    "ALTER TABLE `product_list` ADD COLUMN `tipo_auto_cota_box` int(11) DEFAULT 0",
    "ALTER TABLE `product_list` ADD COLUMN `status_auto_cota_box` int(11) DEFAULT 0",
    "ALTER TABLE `product_list` ADD COLUMN `cotas_premiadas_box` text DEFAULT NULL",
    "ALTER TABLE `product_list` ADD COLUMN `cotas_premiadas_descricao_box` text DEFAULT NULL",
    "ALTER TABLE `product_list` ADD COLUMN `cotas_premiadas_premios_box` text DEFAULT NULL"
];

$success = 0;
$errors = [];

foreach($queries as $query) {
    $conn->query($query);
}

echo "Finalizado.\n";
$conn->close();
?>
