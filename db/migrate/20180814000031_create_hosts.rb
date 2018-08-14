class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :pasword_digest, null: false

      t.timestamps
    end
  end
end
