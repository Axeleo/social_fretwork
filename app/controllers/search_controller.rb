class SearchController < ApplicationController
    
    def muso_results
        @filters = params

        queries= []
        
        queries << [:search_by_name, @filters[:name_q]] unless @filters[:name_q] == ""

        queries << [:search_by_location, @filters[:location_q]] unless @filters[:location_q] == ""

        queries << [:tagged_with, @filters[:key_words].split(" "), :any => true, :wild => true] unless @filters[:key_words]== ""
        min_price = @filters[:bprice_min] == "" ? 0 : @filters[:bprice_min].to_f
        max_price = @filters[:bprice_max] == "" ? 9999999 : @filters[:bprice_max].to_f

        queries << [:where, :base_price => min_price..max_price] 

        min_rating = @filters[:rating_min] == "" ? 0 : @filters[:min_rating].to_i
        
        @muso_results = queries.inject(Muso) { |obj, method_and_args| obj.send(*method_and_args) }.select { |result| result.average_rating >= min_rating }
    end

    def browse_all_musos
        @muso_results = Muso.all
        render :muso_results
    end
end