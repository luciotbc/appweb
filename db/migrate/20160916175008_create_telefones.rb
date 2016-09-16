class CreateTelefones < ActiveRecord::Migration[5.0]
  def change
    create_table :telefones do |t|
      t.references :user,       foreign_key: true
      t.string :numero,         null: false
      t.integer :telefone_tipo, null: false

      t.timestamps
    end
  end
end
