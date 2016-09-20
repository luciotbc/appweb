class CreateSindicalizados < ActiveRecord::Migration[5.0]
  def change
    create_table :sindicalizados, id: false do |t|
      t.references :user,               null: false, primary_key: true
      t.string :nome_civil,             null: false
      t.string :nome_social
      t.date   :nascimento,             null: false
      t.string :rg,                     null: false, limit: 15
      t.string :cpf,                    null: false, limit: 11
      t.integer :genero,                null: false, default: 1
      t.integer :estado_civil,          null: false, default: 1
      t.integer :cor_etnia,             null: false, default: 1

      t.timestamps
    end
    add_index :sindicalizados, :cpf,                  unique: true
    add_index :sindicalizados, :rg,                   unique: true
  end
end
