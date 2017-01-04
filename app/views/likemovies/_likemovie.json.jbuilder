json.extract! likemovie, :id, :title, :synopsis, :movie_length, :director, :rating, :created_at, :updated_at
json.url likemovie_url(likemovie, format: :json)