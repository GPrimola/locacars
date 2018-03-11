class PatiosController < ApplicationController
  before_action :set_unidade
  before_action :set_patio, only: [:show, :edit, :update, :destroy]

  # GET /patios
  # GET /patios.json
  def index
    @patios = @unidade.patios.all
  end

  # GET /patios/1
  # GET /patios/1.json
  def show
  end

  # GET /patios/new
  def new
    @patio = Patio.new
  end

  # GET /patios/1/edit
  def edit
  end

  # POST /patios
  # POST /patios.json
  def create
    @patio = @unidade.patios.new(patio_params)

    respond_to do |format|
      if @patio.save
        format.html { redirect_to [@unidade, @patio], notice: 'Patio was successfully created.' }
        format.json { render :show, status: :created, location: [@unidade, @patio] }
      else
        format.html { render :new }
        format.json { render json: @patio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patios/1
  # PATCH/PUT /patios/1.json
  def update
    respond_to do |format|
      if @patio.update(patio_params)
        format.html { redirect_to [@unidade, @patio], notice: 'Patio was successfully updated.' }
        format.json { render :show, status: :ok, location: [@unidade, @patio] }
      else
        format.html { render :edit }
        format.json { render json: @patio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patios/1
  # DELETE /patios/1.json
  def destroy
    @patio.destroy
    respond_to do |format|
      format.html { redirect_to unidade_patios_url(@unidade), notice: 'Patio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_unidade
      @unidade = Unidade.find(params[:unidade_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_patio
      @patio = Patio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patio_params
      params.require(:patio).permit(:nome)
    end
end
