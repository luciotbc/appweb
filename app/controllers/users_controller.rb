class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def primeiro_cadastro
    @user = current_user

    @sindicalizado = @user.sindicalizado
    if !@user.sindicalizado.present?
      @sindicalizado = Sindicalizado.new
      @sindicalizado.user = @user
    end

    @endereco = @user.enderecos.first
    if !@user.enderecos.present?
      @endereco = Endereco.new
      @endereco.user = @user
    end

    @telefone = @user.telefones.first
    if !@user.telefones.present?
      @telefone = Telefone.new
      @telefone.user = @user
    end
  end

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show

  end

  def new
    @user = User.new
  end

  def edit
  end

  def create

  end

  def update

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:new, :create, :update, :edit, :destroy, :index, :show)
    end
end
