class SearchController < ApplicationController
    
    def muso_results
        queries= []
        
        queries << [:search_by_name, params[:name_q]] unless params[:name_q] == ""
        queries << [:search_by_location, params[:location_q]] unless params[:location_q] == ""

        @muso_results = queries.inject(Muso.all) { |obj, method_and_args| obj.send(*method_and_args) }

    end
end