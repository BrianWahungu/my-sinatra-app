require 'sqlite3'

# Connect to the database
DB = SQLite3::Database.new('movies.db')

# Create the movies table
DB.execute <<-SQL
  CREATE TABLE IF NOT EXISTS movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    year INTEGER NOT NULL
  );
SQL
