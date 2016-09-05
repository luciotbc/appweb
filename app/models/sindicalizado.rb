class Sindicalizado < ApplicationRecord
  belongs_to :user

  validates_cpf :cpf

  enum genero: [ :masculino, :feminino ]
  enum estado_civil: [ :solteiro, :casado, :divorciado, :viuvo ]
  enum cor_da_pele: [ :amarelo, :branco, :pardo, :negro ]

  def nome
    self.nome_social? ? self.nome_social : self.nome_civil
  end

end
