class AddFgColumnToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :fg, :decimal
  end
end
