<?php
// Test

// Connection

$host     = "db"; // Le nom du service docker correspondant à la base de donnée
$database = "mediatheque";
$login    = "root";
$mdp      = "mdp";

try
{
  $bdd = new PDO("mysql:host=$host;dbname=$database;charset=utf8", $login, $mdp);
}
catch (Exception $e)
{
  die('Erreur : ' . $e->getMessage());
}

// Affiche tous les enregistrements de la table
$sql = "SELECT * FROM `film`";

$reponse = $bdd->query($sql);

$note = ['nul','bof', 'passable', 'bien', 'excellent'];

while ($data = $reponse->fetch())
{
  echo "<p>" . $data['title'] . " est sorti en " . $data['year'] . ", et c'est un film " . $note[$data['note'] - 1] . "</p>";
}

$reponse->closeCursor();
