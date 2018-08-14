class CreateMusos < ActiveRecord::Migration[5.2]
  def change
    create_table :musos do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.text :bio
      t.string :base_price
      t.string :location
      t.string :avatar

      t.timestamps
    end
  end
end
