class AddDescriptionToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :description, :string
  end
end
