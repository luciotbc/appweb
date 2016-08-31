class Sindicalizado < ApplicationRecord
  belongs_to :user

  def nome
    self.nome_social? ? self.nome_social : self.nome_civil
  end

end
