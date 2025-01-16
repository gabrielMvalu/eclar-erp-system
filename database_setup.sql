-- Crearea bazei de date pentru ERP-ul 'eclair'
CREATE DATABASE eclair_erp;

-- Selectarea bazei de date
\c eclair_erp;

-- Tabelul pentru Produse
CREATE TABLE Produse (
    produs_id SERIAL PRIMARY KEY,
    nume VARCHAR(255) NOT NULL,
    descriere TEXT,
    pret DECIMAL(10, 2) NOT NULL,
    stoc INT NOT NULL,
    data_adaugare TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabelul pentru Clienți
CREATE TABLE Clienti (
    client_id SERIAL PRIMARY KEY,
    nume VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    telefon VARCHAR(15),
    adresa TEXT,
    data_inregistrare TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabelul pentru Comenzi
CREATE TABLE Comenzi (
    comanda_id SERIAL PRIMARY KEY,
    client_id INT NOT NULL,
    data_comanda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'In procesare',
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Clienti(client_id) ON DELETE CASCADE
);

-- Tabelul pentru Produse in Comenzi
CREATE TABLE Produse_Comenzi (
    produs_comanda_id SERIAL PRIMARY KEY,
    comanda_id INT NOT NULL,
    produs_id INT NOT NULL,
    cantitate INT NOT NULL,
    pret_unitar DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (comanda_id) REFERENCES Comenzi(comanda_id) ON DELETE CASCADE,
    FOREIGN KEY (produs_id) REFERENCES Produse(produs_id) ON DELETE CASCADE
);

-- Tabelul pentru Utilizatori (pentru autentificare backend)
CREATE TABLE Utilizatori (
    utilizator_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    parola_hash VARCHAR(255) NOT NULL,
    rol VARCHAR(50) DEFAULT 'user',
    data_creare TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Crearea unor date demo pentru testare
INSERT INTO Produse (nume, descriere, pret, stoc) VALUES
('Detergent universal', 'Detergent lichid pentru toate tipurile de suprafețe.', 15.99, 100),
('Detergent pentru rufe', 'Special formulat pentru rufe albe și colorate.', 25.50, 200);

INSERT INTO Clienti (nume, email, telefon, adresa) VALUES
('Ion Popescu', 'ion.popescu@example.com', '0721234567', 'Str. Exemplu nr. 1, București'),
('Maria Ionescu', 'maria.ionescu@example.com', '0729876543', 'Str. Exemplu nr. 2, Cluj-Napoca');

INSERT INTO Comenzi (client_id, total) VALUES
(1, 31.98),
(2, 25.50);

INSERT INTO Produse_Comenzi (comanda_id, produs_id, cantitate, pret_unitar) VALUES
(1, 1, 1, 15.99),
(1, 2, 1, 15.99),
(2, 2, 1, 25.50);
