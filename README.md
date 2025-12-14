# 🛍️ BANDER-SHOP

**Bander-Shop** est une plateforme de e-commerce C2C (Consumer to Consumer) permettant aux particuliers d'acheter et de vendre des articles de seconde main. Développée en PHP natif sans framework, elle intègre toutes les fonctionnalités essentielles d'une marketplace moderne : gestion de compte, panier, paiement simulé, messagerie instantanée et administration.

---

## 🚀 Fonctionnalités

### 👤 Espace Utilisateur (Acheteurs & Vendeurs)
* **Authentification :** Inscription, connexion sécurisée et déconnexion.
* **Profil :** Gestion des informations personnelles et de l'adresse de livraison.
* **Vente :** Mise en ligne d'articles avec gestion d'images, modification et suppression de ses propres produits.
* **Catalogue & Recherche :** Navigation par catégories et barre de recherche pour trouver des articles.
* **Panier & Commande :** Gestion dynamique du panier, processus de paiement (checkout) et validation de commande.
* **Suivi de Commande :** Visualisation des étapes de livraison en temps réel et possibilité d'annuler une commande en préparation.
* **Messagerie :** Système de discussion interne pour échanger entre acheteurs et vendeurs.

### 🛠️ Espace Administrateur
* **Dashboard :** Accès réservé pour visualiser les statistiques et gérer le contenu du site.

---

## 💻 Stack Technique

* **Langage :** PHP 7+ (Natif, Programmation Procédurale & PDO).
* **Base de données :** MySQL.
* **Frontend :** HTML5, CSS3 (Design responsive), JavaScript (Validation client).
* **Serveur :** Apache (Compatible XAMPP, WAMP, MAMP, Laragon).

---

## ⚙️ Installation et Configuration

### 1. Prérequis
* Un serveur web local (ex: XAMPP, WAMP).
* PHP et MySQL installés.

### 2. Installation des fichiers
Clonez ce dépôt ou extrayez les fichiers dans le dossier public de votre serveur (ex: `htdocs` ou `www`).

```bash
cd chemin/vers/htdocs
git clone [https://github.com/votre-pseudo/bander-shop.git](https://github.com/votre-pseudo/bander-shop.git)

3. Base de Données
Accédez à phpMyAdmin.

Créez une nouvelle base de données nommée : e_boutique.

Importez les fichiers SQL situés dans le dossier Dump sql/ dans l'ordre suivant pour respecter les contraintes de clés étrangères :

e_boutique_users.sql

e_boutique_categories.sql

e_boutique_products.sql

e_boutique_orders.sql

e_boutique_order_products.sql

e_boutique_order_steps.sql

e_boutique_messages.sql

e_boutique_offres.sql

4. Configuration de la Connexion
Le projet est configuré par défaut pour un environnement local standard. Vérifiez les identifiants dans les fichiers PHP connectant à la base de données (ex: index.php, connexion.php).

Par défaut :

PHP

$pdo = new PDO("mysql:host=localhost;dbname=e_boutique", "root", "rootroot");
Note : Si vous êtes sous Windows (WAMP/XAMPP), le mot de passe est souvent vide (""). Modifiez le code si nécessaire.

📂 Structure du Projet
bander-shop/
├── Dump sql/              # Scripts SQL pour la BDD
├── images/                # Images des produits et assets graphiques
├── admin.php              # Tableau de bord administrateur
├── index.php              # Page d'accueil / Catalogue
├── produit.php            # Page détail produit
├── panier.php             # Gestion du panier
├── checkout.php           # Paiement et validation
├── connexion.php          # Page de login
├── inscription.php        # Page d'inscription
├── mes_articles.php       # Gestion des ventes utilisateur
├── messages.php           # Messagerie interne
├── suivi_commande.php     # Historique commandes
├── styles.css             # Styles CSS principaux
└── verification.js        # Scripts JS

✨ Auteur
Projet réalisé par Daniel Badoyan et Romain Thierry dans le cadre d'un cursus L3 MIAGE.
