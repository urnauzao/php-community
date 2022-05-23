<?php

echo "<h1>APP2</h1>";
echo "PHP rodando...";
echo "<br>";
echo "<br>";

echo "Teste do Banco de Dados MySql";

// Configurações de acesso
$servername = "mysql";
$username = "root";
$password = "senha_exemplar_mysql";
$database = "db_mysql_exemplo";
$port = "3306";

// Criar conexão
$conn = new mysqli($servername, $username, $password, $database, $port);

// Checa conexão
if ($conn->connect_error) {
  die("Erro de conexão ao MySQL: " . $conn->connect_error);
}
echo "<br>";
echo "Conexão com MySQL OK!";
echo "<br>";
echo "<br>";

echo "Teste do Banco de Dados Postgres";

// Configurações de acesso
$servername = "postgres";
$username = "postgres";
$password = "senha_exemplar_postgres";
$database = "db_postgres_exemplo";
$port = "5432";

$con_string = "host={$servername} port={$port} dbname={$database} user={$username} password={$password}";
$conn = pg_connect($con_string) || die('Erro de conexão ao Postgres');
echo "<br>";
echo "Conexão com Postgres OK!";
echo "<br>";
echo "<br>";

echo "Teste do Banco de Dados Redis";
// Configurações de acesso
$servername = "redis";
$password = null;
$port = 6379;

$redis = new Redis();
$redis->connect($servername, $port);
$redis->auth($password);
echo "<br>";
if ($redis->ping()) {
    echo "Conexão com Redis OK!";
}else{
    die('Erro de conexão ao Redis');
}
