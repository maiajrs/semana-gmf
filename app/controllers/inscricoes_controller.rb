class InscricoesController < ApplicationController
  before_action :set_inscrico, only: %i[ show edit update destroy ]

  # GET /inscricoes or /inscricoes.json
  def index
    @inscricoes = Inscricoe.all
  end

  # GET /inscricoes/1 or /inscricoes/1.json
  def show
  end

  # GET /inscricoes/new
  def new
    @inscrico = Inscricoe.new
  end

  # GET /inscricoes/1/edit
  def edit
  end

  # POST /inscricoes or /inscricoes.json
  def create
    @inscrico = Inscricoe.new(inscrico_params)

    respond_to do |format|
      if @inscrico.save
        format.html { redirect_to inscrico_url(@inscrico), notice: "Inscricoe was successfully created." }
        format.json { render :show, status: :created, location: @inscrico }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inscrico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inscricoes/1 or /inscricoes/1.json
  def update
    respond_to do |format|
      if @inscrico.update(inscrico_params)
        format.html { redirect_to inscrico_url(@inscrico), notice: "Inscricoe was successfully updated." }
        format.json { render :show, status: :ok, location: @inscrico }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inscrico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inscricoes/1 or /inscricoes/1.json
  def destroy
    @inscrico.destroy

    respond_to do |format|
      format.html { redirect_to inscricoes_url, notice: "Inscricoe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscrico
      @inscrico = Inscricoe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inscrico_params
      params.require(:inscrico).permit(:nome, :email, :estado, :cidade, :instituicao, :cpf)
    end
end
