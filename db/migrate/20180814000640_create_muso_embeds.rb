class CreateMusoEmbeds < ActiveRecord::Migration[5.2]
  def change
    create_table :muso_embeds do |t|
      t.string :url, null: false
      t.references :muso, foreign_key: true, null: false
      t.string :type, null: false

      t.timestamps
    end
  end
end
