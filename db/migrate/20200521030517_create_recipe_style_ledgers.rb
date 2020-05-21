class CreateRecipeStyleLedgers < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_style_ledgers do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :style, null: false, foreign_key: true

      t.timestamps
    end
  end
end
