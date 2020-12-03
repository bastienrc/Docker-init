# Modéle d'environement Docker pour un projet PHP, Nginx, MariaDB et PhpMyAdmin

Webserver: http://localhost:8000

PhpMyAdmin: http://localhost:8080
  Serveur: laisser vide
  Utilisateur : root
  Mot de passe : mdp

Importer la base de données mediatheque et le webserver affichera une liste de films si tout est Ok.

Ces commandes peuvent etre ajouter au package.json au niveau des scripts pour plus de simplicité :

- Ouvrir la console dans le container php : `docker-compose exec php-fpm bash`
- Lancer la console symfony, `docker-compose exec php-fpm bin/console`
- Open a mysql shell, `docker-compose exec mysql mysql -u root -p root`
