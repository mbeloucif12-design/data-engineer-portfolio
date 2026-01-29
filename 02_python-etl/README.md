# Python ETL (CSV)

## Objectif
Pipeline d'extraction, transformation et chargement de données d'états des lieux depuis un fichier CSV brut vers une base de données.

## Fichiers
- `extract.py` → lecture du CSV brut
- `transform.py` → nettoyage et standardisation des champs
- `load.py` → simulation d'insertion en base
- `data/raw/inspections.csv` → données sources

## Workflow
1. Extraction des données
2. Transformation (dates, champs, sévérité)
3. Chargement vers la base

## Ce que ce module démontre
- Utilisation de Pandas
- Structuration d'un pipeline ETL
- Séparation claire des responsabilités
