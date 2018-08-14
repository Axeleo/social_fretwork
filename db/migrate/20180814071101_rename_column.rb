class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :muso_embeds, :type, :embed_type
  end
end
