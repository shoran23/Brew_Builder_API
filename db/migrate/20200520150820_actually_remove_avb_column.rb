class ActuallyRemoveAvbColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :styles, :avb
  end
end
