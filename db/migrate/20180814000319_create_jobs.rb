class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.text :description
      t.string :title, null: false
      t.string :duration
      t.string :budget
      t.string :location, null: false
      t.references :host, null: false
      t.datetime :date_time, null: false
      t.boolean :filled
      t.boolean :complete

      t.timestamps
    end
  end
end
