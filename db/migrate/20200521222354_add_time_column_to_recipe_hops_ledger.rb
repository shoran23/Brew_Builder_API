class AddTimeColumnToRecipeHopsLedger < ActiveRecord::Migration[6.0]
  def change
    add_column :recipe_hop_ledgers, :time, :integer
  end
end
