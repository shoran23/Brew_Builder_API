class AddAvbLowColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :styles, :alc_by_vol_low, :decimal
  end
end
