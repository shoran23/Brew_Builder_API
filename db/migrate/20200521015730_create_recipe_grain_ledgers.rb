class CreateRecipeGrainLedgers < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_grain_ledgers do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :grain, null: false, foreign_key: true
      t.decimal :qty

      t.timestamps
    end
  end
end
