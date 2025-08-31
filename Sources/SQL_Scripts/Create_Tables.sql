-- Script de création des tables pour BTP360

CREATE TABLE T_Chantiers (
    Chantier_ID AUTOINCREMENT PRIMARY KEY,
    Nom_Chantier TEXT(100) NOT NULL,
    Client_ID LONG,
    Adresse TEXT(255),
    Ville TEXT(100),
    Code_Postal TEXT(20),
    Date_Debut DATE,
    Date_Fin_Prévue DATE,
    Budget_Prévu CURRENCY,
    Responsable_ID LONG,
    Statut TEXT(20) DEFAULT 'Planifié',
    Date_Creation DATE DEFAULT NOW(),
    Créé_Par TEXT(50)
);

-- Ajoutez ici les autres tables du cahier des charges
