require 'rails_helper'
require 'spec_helper'

describe MoviesController, type: :controller do
    
    describe 'create and destroy' do
        it 'should create a new movie' do
            post :create, movie: {:title => "16 Candles", :director => "John Hughes", :id => "1122"}
            response.should redirect_to movies_path
            
        end
        
        it 'should destroy a movie' do
            candles = double(Movie, :title => "16 Candles", :director => "John Hughes", :id => "1122")
            allow(Movie).to receive(:find).and_return(candles)
            expect(candles).to receive(:destroy)
            delete :destroy, {:id => "1122"}
            response.should redirect_to(movies_path)
        end

    end
end