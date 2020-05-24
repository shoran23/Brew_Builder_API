class AddIbuColumnToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :ibu, :decimal
  end
end
