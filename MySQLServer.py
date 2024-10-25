Python
import mysql.connector

def create_database(database_name):
    """
    Creates a MySQL database if it doesn't exist.
    Args: database_name (str): The name of the database to create.
    Returns: bool: True if the database was created successfully, False otherwise.
    """
    try:
        mydb = mysql.connector.connect(
            host="your_host",
            user="your_user",
            password="your_password"
        )
        mycursor = mydb.cursor()
        mycursor.execute(f"CREATE DATABASE IF NOT EXISTS {database_name}")
        mydb.commit()
        print(f"Database '{database_name}' created successfully!")
        return True
    except mysql.connector.Error as error:
        print(f"Error creating database: {error}")
        return False
    finally:
        mycursor.close()
        mydb.close()

if __name__ == "__main__":
    database_name = "alx_book_store"
    success = create_database(database_name)
