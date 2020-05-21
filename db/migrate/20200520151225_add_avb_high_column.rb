class AddAvbHighColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :styles, :alc_by_vol_high, :decimal
  end
end
