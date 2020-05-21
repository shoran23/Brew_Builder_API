class CreateHops < ActiveRecord::Migration[6.0]
  def change
    create_table :hops do |t|
      t.string :name
      t.string :origin
      t.string :type
      t.decimal :alpha
      t.decimal :beta
      t.string :notes

      t.timestamps
    end
  end
end
