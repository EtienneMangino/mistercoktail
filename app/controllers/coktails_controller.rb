class CoktailsController < ApplicationController
  before_action :set_coktail, only: [:show, :edit, :update, :destroy]

  # GET /coktails
  # GET /coktails.json
  def index
    @coktails = Coktail.all
  end

  # GET /coktails/1
  # GET /coktails/1.json
  def show
  end

  # GET /coktails/new
  def new
    @coktail = Coktail.new
  end

  # GET /coktails/1/edit
  def edit
  end

  # POST /coktails
  # POST /coktails.json
  def create
    @coktail = Coktail.new(coktail_params)

    respond_to do |format|
      if @coktail.save
        format.html { redirect_to @coktail, notice: 'Coktail was successfully created.' }
        format.json { render :show, status: :created, location: @coktail }
      else
        format.html { render :new }
        format.json { render json: @coktail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coktails/1
  # PATCH/PUT /coktails/1.json
  def update
    respond_to do |format|
      if @coktail.update(coktail_params)
        format.html { redirect_to @coktail, notice: 'Coktail was successfully updated.' }
        format.json { render :show, status: :ok, location: @coktail }
      else
        format.html { render :edit }
        format.json { render json: @coktail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coktails/1
  # DELETE /coktails/1.json
  def destroy
    @coktail.destroy
    respond_to do |format|
      format.html { redirect_to coktails_url, notice: 'Coktail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coktail
      @coktail = Coktail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coktail_params
      params.require(:coktail).permit(:name, :description)
    end
end
