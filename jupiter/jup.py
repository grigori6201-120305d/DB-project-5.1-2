mport mysql.connector
import pandas as pd

connection = mysql.connector.connect(
  host="localhost",
  user="stud",
  password="student",
  database="reflectance"
)
cursor = connection.cursor()
query = "SELECT * FROM parameters"        #запрос
cursor.execute(query)
rows = cursor.fetchall()
Baza = pd.DataFrame(rows)
for row in rows:
   print(row)


cursor.close()
connection.close()