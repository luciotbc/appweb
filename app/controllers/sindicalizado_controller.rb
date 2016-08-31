class SindicalizadoController < ApplicationController
  def create
    @user = current_user
    @sindicalizado = Sindicalizado.new( )
    # if @user.save
    #   redirect_to @user, :notice => 'Cadastro criado com sucesso!'
    # else
    #   render :new
    # end
  end
end
