import sqlite3
import pandas as pd
from pathlib import Path

# Seting file paths
project = Path(__file__).resolve().parent.parent

database_path = project / "database/ecommerce.db"
sql_path = project / "SQL/reports.sql"
reports_path = project / "Reports"

reports_path.mkdir(exist_ok=True)

# Connect to the database
conn = sqlite3.connect(database_path)

# Read SQL queries
sql_text = sql_path.read_text()

queries = [
    query.strip()
    for query in sql_text.split(";")
    if query.strip()
]

# Execute
for number, query in enumerate(queries, start=1):

    result = pd.read_sql_query(query, conn)

    print(f"\nSQL REPORT {number}")
    print(result.to_string(index=False))

    result.to_csv(
        reports_path / f"sql_report_{number}.csv",
        index=False
    )

conn.close()

print("\nAll SQL reports generated successfully!")
