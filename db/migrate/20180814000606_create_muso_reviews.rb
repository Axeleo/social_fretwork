class CreateMusoReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :muso_reviews do |t|
      t.references :job, foreign_key: true, null: false
      t.numeric :rating, null: false
      t.text :comment

      t.timestamps
    end
  end
end
