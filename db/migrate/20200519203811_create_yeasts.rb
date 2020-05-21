class CreateYeasts < ActiveRecord::Migration[6.0]
  def change
    create_table :yeasts do |t|
      t.string :name
      t.string :lab
      t.string :type
      t.string :form
      t.integer :temp_low
      t.integer :temp_high
      t.decimal :attenuation
      t.string :flocculation
      t.string :notes

      t.timestamps
    end
  end
end
