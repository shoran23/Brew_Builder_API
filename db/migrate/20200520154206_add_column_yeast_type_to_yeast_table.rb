class AddColumnYeastTypeToYeastTable < ActiveRecord::Migration[6.0]
  def change
    add_column :yeasts, :yeast_type, :string
  end
end
