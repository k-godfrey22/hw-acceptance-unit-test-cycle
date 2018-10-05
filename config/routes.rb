Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  
  ##We have to add a route for movies with same director
  get '/movies/same/:id', to: 'movies#find_same_director',  as: :same_director
end
