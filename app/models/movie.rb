class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  ##Here we need to define movies with same director and how things are handle
  ##if there is not a director listed then we return nil
  def self.same_director id
    director = Movie.find(id).director
    return nil if director.nil?
    Movie.where(director: director)
  end
  
  
end
