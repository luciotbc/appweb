class Sindicalizado < ApplicationRecord
  acts_as_paranoid

  # dependency
  belongs_to :user

  # validates
  validates_presence_of :nome_civil, :nascimento, :rg, :cpf, :genero, :estado_civil, :cor_etnia
  validates_cpf :cpf
  validates :rg, :numericality => {:only_integer => true}
  validates_length_of :rg, :minimum => 8, :maximum => 15
  validates_format_of :nome_civil, :with => /\A(?=.* )[^0-9`!@#\\\$%\^&*\;+_=]{4,}\z/
  validates_date :nascimento, :before => lambda { 18.years.ago },
                              :before_message => "must be at least 18 years old"


  enum genero: [ :masculino, :feminino ]
  enum estado_civil: [ :solteiro, :casado, :divorciado, :viuvo ]
  enum cor_etnia: [ :amarelo, :branco, :pardo, :negro, :indigena, :quilambola ]

  def nome
    self.nome_social? ? self.nome_social : self.nome_civil
  end

end
