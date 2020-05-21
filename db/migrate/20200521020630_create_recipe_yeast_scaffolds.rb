class CreateRecipeYeastScaffolds < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_yeast_scaffolds do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :yeast, null: false, foreign_key: true
      t.decimal :qty

      t.timestamps
    end
  end
end
