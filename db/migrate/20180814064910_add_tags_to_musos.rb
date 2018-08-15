class AddTagsToMusos < ActiveRecord::Migration[5.2]
  def change
    add_column :musos, :tags, :string
  end
end
