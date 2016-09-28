class HomeController < ApplicationController
  def index
    impor_cadastro
  end

  protected
  #Força usuário atualizar o cadastro
  def impor_cadastro
      if !current_user.cadastro_completo?
         redirect_to users_primeiro_cadastro_path
      end
  end
end
