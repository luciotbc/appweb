class Telefone < ApplicationRecord
  belongs_to :user

  enum tipo_telefone: [ :residencial, :celular, :comercial]

end
