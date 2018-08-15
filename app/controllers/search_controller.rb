class SearchController < ApplicationController
    
    def muso_results
        @muso_results = Muso.search_by_name(params[:q])
    end
end