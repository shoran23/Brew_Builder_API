class AddAvbColumnToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :alc_by_vol, :decimal
  end
end
