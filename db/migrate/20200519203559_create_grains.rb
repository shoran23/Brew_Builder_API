class CreateGrains < ActiveRecord::Migration[6.0]
  def change
    create_table :grains do |t|
      t.string :name
      t.string :origin
      t.boolean :mash
      t.integer :color
      t.integer :power
      t.decimal :potential
      t.integer :max
      t.string :notes

      t.timestamps
    end
  end
end
