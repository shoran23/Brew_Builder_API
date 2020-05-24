class AddOgColumnToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :og, :decimal
  end
end
