class VinoCepasController < ApplicationController
  before_action :set_vino_cepa, only: %i[ show edit update destroy ]

  # GET /vino_cepas or /vino_cepas.json
  def index
    @vino_cepas = VinoCepa.all
  end

  # GET /vino_cepas/1 or /vino_cepas/1.json
  def show
  end

  # GET /vino_cepas/new
  def new
    @vino_cepa = VinoCepa.new
  end

  # GET /vino_cepas/1/edit
  def edit
  end

  # POST /vino_cepas or /vino_cepas.json
  def create
    @vino_cepa = VinoCepa.new(vino_cepa_params)

    respond_to do |format|
      if @vino_cepa.save
        format.html { redirect_to vino_cepa_url(@vino_cepa), notice: "Vino cepa was successfully created." }
        format.json { render :show, status: :created, location: @vino_cepa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vino_cepa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vino_cepas/1 or /vino_cepas/1.json
  def update
    respond_to do |format|
      if @vino_cepa.update(vino_cepa_params)
        format.html { redirect_to vino_cepa_url(@vino_cepa), notice: "Vino cepa was successfully updated." }
        format.json { render :show, status: :ok, location: @vino_cepa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vino_cepa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vino_cepas/1 or /vino_cepas/1.json
  def destroy
    @vino_cepa.destroy

    respond_to do |format|
      format.html { redirect_to vino_cepas_url, notice: "Vino cepa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vino_cepa
      @vino_cepa = VinoCepa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vino_cepa_params
      params.fetch(:vino_cepa, {})
    end
end
