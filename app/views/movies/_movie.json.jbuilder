json.extract! movie, :id, :imdb_id, :title, :year, :genre, :director, :country, :description, :created_at, :updated_at
json.url movie_url(movie, format: :json)
