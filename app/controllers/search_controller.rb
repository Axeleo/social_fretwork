class SearchController < ApplicationController
    
    def muso_results
        @fltrs = params

        queries= []
        
        queries << [:search_by_name, @fltrs[:name_q]] unless @fltrs[:name_q].empty?

        queries << [:search_by_loc, @fltrs[:location_q]] unless @fltrs[:location_q].empty?

        queries << [:tagged_with, @fltrs[:key_words].split(" "), :any => true, :wild => true] unless @fltrs[:key_words].empty?
        min_price = @fltrs[:bprice_min].empty? ? 0 : @fltrs[:bprice_min].to_f
        max_price = @fltrs[:bprice_max].empty? ? 9999999 : @fltrs[:bprice_max].to_f

        queries << [:where, :base_price => min_price..max_price] 

        min_rating = @fltrs[:rating_min].empty? ? 0 : @fltrs[:min_rating].to_i
        
        @muso_results = queries.inject(Muso) { |obj, method_and_args| obj.send(*method_and_args) }.select { |result| result.average_rating >= min_rating }
    end

    def browse_all_musos
        @muso_results = Muso.all
        render :muso_results
    end
end