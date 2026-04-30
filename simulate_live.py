import pandas as pd
import psycopg2
import time 
from datetime import datetime

df = pd.read_csv("matches.csv")

conn =  psycopg2.connect(
    database = "ipl",
    user = "postgres",
    password = "vicky123",
    host = "localhost",
    port = "5432" 
)
cursor = conn.cursor()

print("Simulation started successfully")

for i,  row in df.head(20).iterrows():
    cursor.execute("""
                   insert into ipl_matches (id, season, city, date, team1, team2, toss_winner,
                   winner, venue, status, last_updated)
                   values (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                   on conflict (id) do update 
                   set status = excluded.status, 
                   last_updated = excluded.last_updated;
                   """, (
                       int(row["id"]),
                       row["season"],
                       row["city"],
                       row["date"],
                       row["team1"],
                       row["team2"],
                       row["toss_winner"],
                       row["winner"],
                       row["venue"],
                       "LIVE",
                       datetime.now()
                   ))
    conn.commit()
    
    print(f"inserted match {row['id']}")
    
    time.sleep(5)
    
cursor.close()
conn.close()
print("simulation complete")

