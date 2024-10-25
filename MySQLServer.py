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
        mycursor.execute(f"CREATE DATABASE IF NOT EXISTS alx_book_store")
        mydb.commit()
        print(f"Database alx_book_store created successfully!")
        return True
    except mysql.connector.Error as error:
        print(f"Error creating database: {error}")
        return False
    finally:
        mycursor.close()
        mydb.close()

if __name__ == "__main__":
    success = create_database('alx_book_store')
