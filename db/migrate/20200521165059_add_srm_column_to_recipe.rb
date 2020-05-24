class AddSrmColumnToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :srm, :integer
  end
end
