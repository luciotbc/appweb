class SindicalizadoController < ApplicationController
  before_action :set_sindicalizado, only: [:show, :edit, :update, :destroy]

  # GET /dados_pessoais
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sindicalizado
      @sindicalizado = Sindicalizado.find(current_user.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sindicalizado_params
      params.require(:sindicalizado)
    end
end
