class CreateMusoImgs < ActiveRecord::Migration[5.2]
  def change
    create_table :muso_imgs do |t|
      t.references :muso, foreign_key: true, null: false
      t.string :img, null: false

      t.timestamps
    end
  end
end
