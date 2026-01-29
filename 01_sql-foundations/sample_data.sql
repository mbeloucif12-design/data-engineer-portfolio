-- Agences
INSERT INTO agencies (name, city) VALUES
('Immo Paris Centre', 'Paris'),
('Rive Gauche Gestion', 'Paris'),
('Seine Habitat', 'Saint-Denis');

-- Biens
INSERT INTO properties (address, city, surface_m2, agency_id) VALUES
('12 rue Oberkampf', 'Paris', 45, 1),
('8 avenue de France', 'Paris', 60, 1),
('5 rue du Port', 'Saint-Denis', 55, 3);

-- Inspections
INSERT INTO inspections (property_id, inspection_type, inspection_date) VALUES
(1, 'entry', '2024-01-10'),
(1, 'exit', '2025-01-10'),
(2, 'entry', '2024-03-05'),
(3, 'entry', '2024-02-15'),
(3, 'exit', '2024-12-20');

-- Défauts
INSERT INTO defects (inspection_id, room, description, severity) VALUES
(2, 'Salon', 'Rayure parquet', 'medium'),
(2, 'Cuisine', 'Porte placard cassée', 'high'),
(5, 'Salle de bain', 'Joint usé', 'low');
