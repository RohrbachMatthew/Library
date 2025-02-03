
import mysql.connector
from tabulate import tabulate

# Connection to database
connection = mysql.connector.connect(
    host="(Enter Host Name)",
    user="(Enter User Name)",
    password="(Enter Password)",
    database="(Enter Database Name)"
)
cursor = connection.cursor()

# Query all in Books ordered by category
cursor.execute("""SELECT bookID, title, author, category, ISBN, publication_date, available_copies FROM Books
               order by category;""")

rows = cursor.fetchall()  # Fetch all rows from the query

# Define column headers
headers = ["ID", "Title", "Author", "Category", "ISBN", "Pub Date", "Copies"]

print(tabulate(rows, headers=headers, tablefmt="grid"))

# Close connection
cursor.close()
connection.close()
