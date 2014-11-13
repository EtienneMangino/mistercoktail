class DosesController < ApplicationController

  def create
    @coktail = Coktail.find(params[:coktail_id])
    @dose = @coktail.doses.new(dose_params)
    if @dose.save
      redirect_to coktail_path(@coktail)
    else
      @ingredients = Ingredient.all
      render 'coktails/show'
    end
  end

  def destroy
    @coktail = Coktail.find(params[:coktail_id])
    @dose = Dose.find(params[:id])
    @dose.destroy
    respond_to do |format|
      format.html { redirect_to @coktail, notice: 'Dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def dose_params
    params.require(:dose).permit(:amount, :ingredient_id)
  end

end
