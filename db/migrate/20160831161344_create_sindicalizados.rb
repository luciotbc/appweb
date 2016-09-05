class CreateSindicalizados < ActiveRecord::Migration[5.0]
  def change
    create_table :sindicalizados, id: false do |t|
      t.references :user,               null: false, primary_key: true
      t.string :nome_civil,             null: false
      t.string :nome_social
      t.date   :nascimento,             null: false
      t.string :rg,                     null: false
      t.string :cpf,                    null: false
      t.integer :genero,                null: false
      t.integer :estado_civil,          null: false
      t.integer :cor_da_pele,           null: false

      t.timestamps
    end
    add_index :sindicalizados, :cpf,                  unique: true
    add_index :sindicalizados, :rg,                   unique: true
  end
end
