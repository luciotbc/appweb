class AddDeletedAtToSindicalizados < ActiveRecord::Migration[5.0]
  def change
    add_column :sindicalizados, :deleted_at, :datetime
    add_index :sindicalizados, :deleted_at
  end
end
