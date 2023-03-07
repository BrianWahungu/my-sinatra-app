## Introduction

# my-sinatra-app

In the app above, we require the sinatra and json libraries. We also define a function search_movies that takes a query and returns an array of movie data.

# Function

We  define two routes: a root route that just displays a welcome message, and a /movies/search route that takes a query parameter and returns JSON data of movies that match the query.

# Running the app:

To run the app, we simply run ruby app.rb in the terminal, and then visit http://localhost:4567 in our browser to see the welcome message. 

To search for movies, visit http://localhost:4567/movies/search/<your-query> in your browser, replacing <your-query> with your actual search query.

    For example: http://localhost:4567/movies/search/the-godfather
    
    It is possible to test this on postman by:

    1. Open Postman and create a new request by clicking on the "New" button in the top left corner.
    
    2. Select "GET" or "POST" as the request method depending on the route you want to test.
    
    3. Enter the URL of your Sinatra app with the appropriate route, for example http://localhost:4567/movies/search/the-godfather for a movie search.
    
    4. If you are making a POST request, select the "Body" tab and choose "x-www-form-urlencoded". Enter the parameters for the request, such as "title" and "year" for adding a new movie to the database.
    
    5. Click the "Send" button to send the request and see the response from your app. 

# Conclusion:

The application can search for movies as long as the key word is properly inprinted.

# Created by:

1. Brian Wahungu
2. Albert Byrone

# License

Apache 2.0






