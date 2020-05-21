class AddHopTypeColumnToHops < ActiveRecord::Migration[6.0]
  def change
    add_column :hops, :hop_type, :string
  end
end
