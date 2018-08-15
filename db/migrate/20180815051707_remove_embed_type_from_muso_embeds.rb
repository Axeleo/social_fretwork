class RemoveEmbedTypeFromMusoEmbeds < ActiveRecord::Migration[5.2]
  def change
    remove_column :muso_embeds, :embed_type, :string
  end
end
