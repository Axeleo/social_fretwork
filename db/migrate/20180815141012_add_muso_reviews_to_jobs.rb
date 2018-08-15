class AddMusoReviewsToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :muso_review, foreign_key: true
  end
end
