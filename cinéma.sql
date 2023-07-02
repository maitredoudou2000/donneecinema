-- Création de la table Cinemas
CREATE TABLE Cinemas (
  id INT PRIMARY KEY,
  nom VARCHAR(100),
  adresse VARCHAR(200),
  ville VARCHAR(100)
);

-- Création de la table Salles
CREATE TABLE Salles (
  id INT PRIMARY KEY,
  cinema_id INT,
  numero INT,
  capacite INT,
  FOREIGN KEY (cinema_id) REFERENCES Cinemas(id)
);

-- Création de la table Films
CREATE TABLE Films (
  id INT PRIMARY KEY,
  titre VARCHAR(100),
  duree INT,
  genre VARCHAR(50),
  annee_sortie INT
);

-- Création de la table Seances
CREATE TABLE Seances (
  id INT PRIMARY KEY,
  salle_id INT,
  film_id INT,
  date_seance DATE,
  heure_seance TIME,
  FOREIGN KEY (salle_id) REFERENCES Salles(id),
  FOREIGN KEY (film_id) REFERENCES Films(id)
);

-- Création de la table Reservations
CREATE TABLE Reservations (
  id INT PRIMARY KEY,
  seance_id INT,
  nom_client VARCHAR(100),
  nombre_places INT,
  FOREIGN KEY (seance_id) REFERENCES Seances(id)
);

-- Insertion de données factices dans la table Cinemas
INSERT INTO Cinemas (id, nom, adresse, ville)
VALUES (1, 'Cinema A', 'Adresse A', 'Ville A'),
       (2, 'Cinema B', 'Adresse B', 'Ville B');

-- Insertion de données factices dans la table Salles
INSERT INTO Salles (id, cinema_id, numero, capacite)
VALUES (1, 1, 1, 100),
       (2, 1, 2, 150),
       (3, 2, 1, 120);

-- Insertion de données factices dans la table Films
INSERT INTO Films (id, titre, duree, genre, annee_sortie)
VALUES (1, 'Film 1', 120, 'Action', 2020),
       (2, 'Film 2', 90, 'Comédie', 2019),
       (3, 'Film 3', 110, 'Drame', 2021);

-- Insertion de données factices dans la table Seances
INSERT INTO Seances (id, salle_id, film_id, date_seance, heure_seance)
VALUES (1, 1, 1, '2023-07-01', '18:00:00'),
       (2, 1, 2, '2023-07-02', '19:30:00'),
       (3, 2, 3, '2023-07-03', '20:00:00');

-- Insertion de données factices dans la table Reservations
INSERT INTO Reservations (id, seance_id, nom_client, nombre_places)
VALUES (1, 1, 'Client A', 2),
       (2, 2, 'Client B', 4),
       (3, 3, 'Client C', 1);
 