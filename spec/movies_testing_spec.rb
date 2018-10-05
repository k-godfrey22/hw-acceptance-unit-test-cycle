require 'rails_helper'
require_relative '../app/controllers/movies_controller.rb'

describe Movie do
     it 'should find movies with the same director' do
        mov1 = Movie.create(title: "Transformers", director: "Micheal Bay")
        mov2 = Movie.create(title: "Armageddon", director: "Micheal Bay")
        results = Movie.same_director(mov1.id)
        expect(results).to eq([mov1, mov2])
    end
    
    it 'should return nil for Release Data' do
         candles = Movie.create(title: "16 Candles", director: "John Hughes")
         date = Movie.find(candles).release_date
         expect(date).to eq(nil)
     end
     
    it 'should return nil for Rating' do
         candles = Movie.create(title: "16 Candles", director: "John Hughes")
         date = Movie.find(candles).rating
         expect(date).to eq(nil)
     end
     
     it 'should return nil for moview when director is missing' do
        candles = Movie.create(title: "16 Candles", director: "John Hughes")
        pink = Movie.create(title: "Pretty in Pink")
        results = Movie.same_director(pink.id)
        expect(results).to eq(nil)
    end
     
        
    
   end
   