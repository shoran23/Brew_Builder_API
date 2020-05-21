class CreateRecipeHopLedgers < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_hop_ledgers do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :hop, null: false, foreign_key: true
      t.decimal :qty

      t.timestamps
    end
  end
end
