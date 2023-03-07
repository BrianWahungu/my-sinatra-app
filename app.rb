require 'sinatra'
require 'json'
require './database'

# Search for movies in the database
def search_movies(query)
  movies = DB.execute("SELECT * FROM movies WHERE title LIKE ?", "%#{query}%")
  movies.map { |m| { id: m[0], title: m[1], year: m[2] } }
end

# Add a new movie to the database
def add_movie(title, year)
  DB.execute("INSERT INTO movies (title, year) VALUES (?, ?)", title, year)
end

# Define the routes for your app
get '/' do
  "Welcome to the Movie Finder app!"
end

get '/movies/search/:query' do
  query = params[:query]
  movies = search_movies(query)
  movies.to_json
end

post '/movies/add' do
  title = params[:title]
  year = params[:year]
  add_movie(title, year)
  "Movie added successfully"
end
