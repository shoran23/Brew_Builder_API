class CreateStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :styles do |t|
      t.string :name
      t.string :overview
      t.integer :ibu_low
      t.integer :ibu_high
      t.integer :srm_low
      t.integer :srm_high
      t.decimal :og_low
      t.decimal :og_high
      t.decimal :fg_low
      t.decimal :fg_high
      t.decimal :avb

      t.timestamps
    end
  end
end
