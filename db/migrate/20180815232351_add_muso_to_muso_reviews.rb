class AddMusoToMusoReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :muso_reviews, :muso, foreign_key: true
  end
end
