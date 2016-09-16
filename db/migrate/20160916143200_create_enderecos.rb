class CreateEnderecos < ActiveRecord::Migration[5.0]
  def change
    create_table :enderecos do |t|
      t.references :user,         null: false, unique: true, foreign_key: true
      t.references :cidade,       null: false, foreign_key: true
      t.integer :cep,             null: false
      t.string :bairro,           null: false
      t.string :rua,              null: false
      t.integer :numero
      t.string :complemento

      t.timestamps
    end
  end
end
