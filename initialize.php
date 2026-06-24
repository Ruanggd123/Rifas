<?php
ini_set('display_errors', 0);
ini_set('display_startup_errors', 0);
error_reporting(E_ALL);
$protocol = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https://" : "http://");
$host = isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : 'localhost';
$port = (isset($_SERVER['SERVER_PORT']) && $_SERVER['SERVER_PORT'] == '8000') ? ':8000' : '';
$base_path = ($host == 'localhost' && empty($port)) ? '/dgrau/' : '/';

if (!defined('BASE_URL'))
    define('BASE_URL', $protocol . $host . $base_path);
if (!defined('BASE_REF'))
    define('BASE_REF', $protocol . $host . $base_path);
if (!defined('base_url'))
    define('base_url', $protocol . $host . $base_path);

if (!defined('base_app'))
    define('base_app', str_replace('\\', '/', __DIR__) . '/');

if (!defined('BASE_APP'))
    define('BASE_APP', str_replace('\\', '/', __DIR__) . '/');
if (!defined('DB_SERVER'))
    define('DB_SERVER', 'localhost');

if (isset($_SERVER['SERVER_NAME']) && ($_SERVER['SERVER_NAME'] == 'localhost' || $_SERVER['SERVER_NAME'] == '127.0.0.1')) {
    if (!defined('DB_USERNAME'))
        define('DB_USERNAME', 'root');
    if (!defined('DB_PASSWORD'))
        define('DB_PASSWORD', '');
    if (!defined('DB_NAME'))
        define('DB_NAME', 'dgrau');
} else {
    if (!defined('DB_USERNAME'))
        define('DB_USERNAME', 'u380083244_dgrau');
    if (!defined('DB_PASSWORD'))
        define('DB_PASSWORD', 'Apifull@01');
    if (!defined('DB_NAME'))
        define('DB_NAME', 'u380083244_dgrau');
}
?>
