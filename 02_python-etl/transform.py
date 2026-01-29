"""
Nettoyage et transformation des données d'inspection.
"""

import pandas as pd

def transform_data(df):
    print("Transformation des données...")

    # Normaliser les noms de colonnes
    df.columns = [c.lower().strip().replace(" ", "_") for c in df.columns]

    # Supprimer les lignes sans type ou date d'inspection
    df = df.dropna(subset=["inspection_type", "inspection_date"])

    # Convertir les dates
    df["inspection_date"] = pd.to_datetime(df["inspection_date"])

    # Normaliser la sévérité
    df["severity"] = df["severity"].fillna("low").str.lower()

    print("Transformation terminée")
    return df

if __name__ == "__main__":
    from extract import extract_data
    data = extract_data()
    transform_data(data)
