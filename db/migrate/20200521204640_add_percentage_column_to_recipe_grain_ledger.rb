class AddPercentageColumnToRecipeGrainLedger < ActiveRecord::Migration[6.0]
  def change
    add_column :recipe_grain_ledgers, :percentage, :decimal
  end
end
