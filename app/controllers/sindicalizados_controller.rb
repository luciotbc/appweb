class SindicalizadosController < ApplicationController
  before_action :set_sindicalizado, only: [:show, :edit, :update, :destroy]

  # GET /sindicalizados
  # GET /sindicalizados.json
  def index
    @sindicalizados = Sindicalizado.all
  end

  # GET /sindicalizados/1
  # GET /sindicalizados/1.json
  def show
  end

  # GET /sindicalizados/new
  def new
    @sindicalizado = Sindicalizado.new
  end

  # GET /sindicalizados/1/edit
  def edit
  end

  # POST /sindicalizados
  # POST /sindicalizados.json
  def create
    @sindicalizado = Sindicalizado.new(sindicalizado_params)

    respond_to do |format|
      if @sindicalizado.save
        format.html { redirect_to @sindicalizado, notice: 'Sindicalizado was successfully created.' }
        format.json { render :show, status: :created, location: @sindicalizado }
      else
        format.html { render :new }
        format.json { render json: @sindicalizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sindicalizados/1
  # PATCH/PUT /sindicalizados/1.json
  def update
    respond_to do |format|
      if @sindicalizado.update(sindicalizado_params)
        format.html { redirect_to @sindicalizado, notice: 'Sindicalizado was successfully updated.' }
        format.json { render :show, status: :ok, location: @sindicalizado }
      else
        format.html { render :edit }
        format.json { render json: @sindicalizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sindicalizados/1
  # DELETE /sindicalizados/1.json
  def destroy
    @sindicalizado.destroy
    respond_to do |format|
      format.html { redirect_to sindicalizados_url, notice: 'Sindicalizado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sindicalizado
      @sindicalizado = Sindicalizado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sindicalizado_params
      params.require(:sindicalizado).permit(:new, :create, :update, :edit, :destroy, :index, :show)
    end
end
