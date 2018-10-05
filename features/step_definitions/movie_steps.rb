##Trying to create steps in order to pass more test cases

##When the movies exist, we want to add the movie to the database
Given (/the following movies exist/) do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

##We want to check the director
##We have a title and director and we want to make sure the match is correct
Then (/^the director of "(.*)" should be "([^"]*)"$/) do |title, director|
  movie = Movie.find_by_title(title)
  expect(movie.director).to eq director
end




