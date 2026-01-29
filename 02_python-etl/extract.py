"""
Extraction des données depuis un fichier CSV brut.
"""

import pandas as pd

RAW_PATH = "data/raw/inspections.csv"

def extract_data(path=RAW_PATH):
    print("Extraction des données...")
    df = pd.read_csv(path)
    print(f"{len(df)} lignes extraites")
    return df

if __name__ == "__main__":
    extract_data()
