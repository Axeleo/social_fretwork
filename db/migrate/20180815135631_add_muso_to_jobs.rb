class AddMusoToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :muso, foreign_key: true
  end
end
