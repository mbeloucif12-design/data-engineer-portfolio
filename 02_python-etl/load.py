"""
Simulation du chargement des données vers une base de données.
"""

def load_data(df):
    print("Chargement des données...")
    print(f"{len(df)} lignes prêtes à être insérées en base")
    print("Colonnes:", list(df.columns))

if __name__ == "__main__":
    from extract import extract_data
    from transform import transform_data

    raw = extract_data()
    clean = transform_data(raw)
    load_data(clean)
