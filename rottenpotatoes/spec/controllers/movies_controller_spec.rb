require 'rails_helper'

describe MoviesController do
    describe "search movie with same director" do
        it "redirect to homepage if no director found" do
            movie = Movie.create
            get :same_director, {:id => movie.id}
            if movie.director.nil? || movie.director.empty?
            response.should redirect_to(movies_path)
            end
        end
    end
end