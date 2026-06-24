<?php
require_once 'settings.php';

$firstname = 'Admin';
$lastname = 'Ruan';
$username = 'ruanggd123';
$password = md5('ruanggd123');
$email = 'admin@ruanggd.com';
$type = 1; // 1 = Admin

// Verificar se o usuário já existe
$check = $conn->query("SELECT * FROM users WHERE username = '{$username}'");
if($check->num_rows > 0){
    echo "O usuário '{$username}' já existe! Pode fazer login com ele.";
} else {
    $sql = "INSERT INTO `users` (`firstname`, `lastname`, `username`, `password`, `type`, `email`) 
            VALUES ('{$firstname}', '{$lastname}', '{$username}', '{$password}', {$type}, '{$email}')";
    
    if($conn->query($sql)){
        echo "<h1>Sucesso!</h1>";
        echo "<p>Usuário criado com sucesso.</p>";
        echo "<p><b>Login:</b> {$username}<br><b>Senha:</b> ruanggd123</p>";
        echo "<p><a href='/admin/login.php'>Clique aqui para fazer login</a></p>";
    } else {
        echo "Erro ao criar usuário: " . $conn->error;
    }
}
?>
