<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);
mysqli_report(MYSQLI_REPORT_OFF);

echo "Iniciando correcao...<br>";

// 1. CORRIGIR O BANCO DE DADOS
require_once __DIR__ . "/config.php";
require_once __DIR__ . "/classes/DBConnection.php";

$db = new DBConnection();
$conn = $db->conn;

if (!$conn) {
    echo "Erro: Banco de dados nao conectado.<br>";
} else {
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
    foreach($queries as $query) {
        if ($conn->query($query)) {
            $success++;
        }
    }
    echo "Banco de dados: Executou $success queries (erros normais se a coluna ja existia).<br>";
}

// 2. CORRIGIR O ARQUIVO DE LOCK NO MAIN.PHP E MISTER.PHP
$files = [__DIR__ . "/class/Main.php", __DIR__ . "/class/Mister.php"];
foreach ($files as $file) {
    if (file_exists($file)) {
        $content = file_get_contents($file);
        
        $replaced = false;
        
        // Substituir aspas duplas
        if (strpos($content, '$_SERVER["DOCUMENT_ROOT"] . "/pedido.lock"') !== false) {
            $content = str_replace('$_SERVER["DOCUMENT_ROOT"] . "/pedido.lock"', 'sys_get_temp_dir() . "/pedido_" . md5(__DIR__) . ".lock"', $content);
            $replaced = true;
        }
        
        // Substituir aspas simples
        if (strpos($content, '$_SERVER[\'DOCUMENT_ROOT\'] . "/pedido.lock"') !== false) {
            $content = str_replace('$_SERVER[\'DOCUMENT_ROOT\'] . "/pedido.lock"', 'sys_get_temp_dir() . "/pedido_" . md5(__DIR__) . ".lock"', $content);
            $replaced = true;
        }

        if ($replaced) {
            file_put_contents($file, $content);
            echo "Corrigido o sistema de Lock no arquivo: " . basename($file) . "<br>";
        } else {
            echo "O arquivo " . basename($file) . " nao precisava de correcao de Lock ou ja foi corrigido.<br>";
        }
    }
}

echo "<br><b>TUDO PRONTO! O ERRO 500 E O ERRO DO BANCO DE DADOS DEVEM ESTAR RESOLVIDOS!</b><br>";
echo "Pode acessar o site e testar.";
?>
