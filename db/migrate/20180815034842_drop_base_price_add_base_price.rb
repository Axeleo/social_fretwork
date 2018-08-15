class DropBasePriceAddBasePrice < ActiveRecord::Migration[5.2]
  def up
    change_column :musos, :base_price, 'numeric USING CAST(base_price AS numeric)'
  end

  def down
    change_column :musos, :base_price, :string
  end
end
