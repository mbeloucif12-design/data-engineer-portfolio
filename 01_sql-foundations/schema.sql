-- Tables principales

CREATE TABLE agencies (
    agency_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50)
);

CREATE TABLE properties (
    property_id SERIAL PRIMARY KEY,
    address VARCHAR(150),
    city VARCHAR(50),
    surface_m2 INT,
    agency_id INT REFERENCES agencies(agency_id)
);

CREATE TABLE inspections (
    inspection_id SERIAL PRIMARY KEY,
    property_id INT REFERENCES properties(property_id),
    inspection_type VARCHAR(20), -- 'entry' or 'exit'
    inspection_date DATE
);

CREATE TABLE defects (
    defect_id SERIAL PRIMARY KEY,
    inspection_id INT REFERENCES inspections(inspection_id),
    room VARCHAR(50),
    description TEXT,
    severity VARCHAR(20) -- low, medium, high
);
