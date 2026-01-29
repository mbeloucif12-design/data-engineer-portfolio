-- 1. Nombre d'EDL par agence
SELECT a.name, COUNT(i.inspection_id) AS total_inspections
FROM agencies a
JOIN properties p ON a.agency_id = p.agency_id
JOIN inspections i ON p.property_id = i.property_id
GROUP BY a.name
ORDER BY total_inspections DESC;

-- 2. Défauts les plus fréquents
SELECT room, COUNT(defect_id) AS defect_count
FROM defects
GROUP BY room
ORDER BY defect_count DESC;

-- 3. Temps moyen entre entrée et sortie par bien
SELECT p.address,
       MIN(i.inspection_date) AS entry_date,
       MAX(i.inspection_date) AS exit_date,
       MAX(i.inspection_date) - MIN(i.inspection_date) AS days_between
FROM properties p
JOIN inspections i ON p.property_id = i.property_id
GROUP BY p.address;

-- 4. Biens avec défauts graves
SELECT DISTINCT p.address, d.description, d.severity
FROM properties p
JOIN inspections i ON p.property_id = i.property_id
JOIN defects d ON i.inspection_id = d.inspection_id
WHERE d.severity = 'high';
