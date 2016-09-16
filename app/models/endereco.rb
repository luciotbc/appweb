class Endereco < ApplicationRecord
  belongs_to :user
  belongs_to :cidade
end
