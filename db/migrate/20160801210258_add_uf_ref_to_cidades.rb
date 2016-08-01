class AddUfRefToCidades < ActiveRecord::Migration[5.0]
  def change
    add_reference :cidades, :uf, foreign_key: true
  end
end
