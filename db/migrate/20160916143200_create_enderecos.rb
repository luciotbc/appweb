class CreateEnderecos < ActiveRecord::Migration[5.0]
  def change
    create_table :enderecos do |t|
      t.references :user,         null: false, unique: true, foreign_key: true
      t.references :cidade,       null: false, foreign_key: true
      t.string :cep,              null: false, limit: 8
      t.string :bairro
      t.string :rua,              null: false
      t.integer :numero
      t.string :complemento
      t.boolean :principal,       null: false, default: false

      t.timestamps
    end
  end
end
