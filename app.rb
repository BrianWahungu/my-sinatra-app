require 'sinatra'
require 'json'

# Your backend logic here
# For example, you could have a function to search for movies in your database
def search_movies(query)
  # Return dummy data for now
  [
    { title: "The Godfather", year: 1972 },
    { title: "The Shawshank Redemption", year: 1994 },
    { title: "The Dark Knight", year: 2008 }
  ]
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
