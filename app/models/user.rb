class User < ApplicationRecord
  acts_as_paranoid

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :confirmable, :omniauthable, :omniauth_providers => [:facebook]

  #Validations
  validates_presence_of :email
  validates_confirmation_of :password
  #validates_length_of :bio, :minimum => 30, :allow_blank => false
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_uniqueness_of :email

  #Dependency
  has_one :sindicalizado, :dependent => :nullify
  has_many :enderecos
  has_many :telefones

  #Enuns
  enum role: [ :user, :admin ]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

  def cadastro_completo?
    self.sindicalizado.present? && self.enderecos.present? && self.telefones.present?
  end
end
