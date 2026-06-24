<?php
// router.php para o servidor embutido do PHP

if (preg_match('/\.(?:png|jpg|jpeg|gif|css|js|woff|woff2|ttf|svg|eot|mp3|wav|mp4)$/', $_SERVER["REQUEST_URI"])) {
    return false;    // Serve os arquivos estáticos como estão
}

$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$uri = ltrim($uri, '/');

// Se tiver dgrau no começo, tira
if (strpos($uri, 'dgrau/') === 0) {
    $uri = substr($uri, 6);
}

if ($uri === '') {
    include 'index.php';
    exit;
}

if (preg_match('/^campanha\/(.*)$/', $uri, $matches)) {
    $_GET['p'] = 'pages/products/view_product';
    $_GET['id'] = $matches[1];
    include 'index.php';
    exit;
}

if (preg_match('/^compra\/(.*)$/', $uri, $matches)) {
    $_GET['p'] = 'pages/orders/view_order';
    $_GET['id'] = $matches[1];
    include 'index.php';
    exit;
}

$rotas_simples = [
    'user/compras' => 'pages/orders',
    'user/alterar-senha' => 'pages/change-password',
    'user/atualizar-cadastro' => 'pages/update-registration',
    'user/afiliado' => 'pages/affiliate',
    'cadastrar' => 'pages/register',
    'login' => 'pages/login',
    'meus-numeros' => 'pages/my-numbers',
    'ganhadores' => 'pages/winners',
    'contato' => 'pages/contact',
    'termos-de-uso' => 'pages/terms',
    'campanhas' => 'pages/campaign',
    'concluidas' => 'pages/campaign-finished',
    'em-breve' => 'pages/campaign-soon',
    'recuperar-senha' => 'pages/recover-password',
];

if (array_key_exists($uri, $rotas_simples)) {
    $_GET['p'] = $rotas_simples[$uri];
    include 'index.php';
    exit;
}

if ($uri === 'logout') {
    $_GET['action'] = 'logout_customer';
    include 'class/Auth.php';
    exit;
}

// Fallback
if (file_exists($uri)) {
    return false;
}

include 'index.php';
