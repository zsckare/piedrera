class TitularsController < ApplicationController
  before_action :set_titular, only: [:show, :edit, :update, :destroy]
  @btn = ""
  # GET /titulars
  # GET /titulars.json
  def index
    @titulars = Titular.all.paginate(page: params[:page], per_page: 7)
  end

  # GET /titulars/1
  # GET /titulars/1.json
  def show
  end

  # GET /titulars/new
  def new
    @titular = Titular.new
      @btn = "Agregar Titular"
  end

  # GET /titulars/1/edit
  def edit
      @btn = "Editar Titular"
  end

  # POST /titulars
  # POST /titulars.json
  def create
    @titular = Titular.new(titular_params)

    respond_to do |format|
      if @titular.save
        format.html { redirect_to @titular, notice: 'Titular was successfully created.' }
        format.json { render :show, status: :created, location: @titular }
      else
        format.html { render :new }
        format.json { render json: @titular.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titulars/1
  # PATCH/PUT /titulars/1.json
  def update
    respond_to do |format|
      if @titular.update(titular_params)
        format.html { redirect_to @titular, notice: 'Titular was successfully updated.' }
        format.json { render :show, status: :ok, location: @titular }
      else
        format.html { render :edit }
        format.json { render json: @titular.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titulars/1
  # DELETE /titulars/1.json
  def destroy
    @titular.destroy
    respond_to do |format|
      format.html { redirect_to titulars_url, notice: 'Titular was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_titular
      @titular = Titular.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def titular_params
      params.require(:titular).permit(:nombre, :paterno, :materno)
    end
end
