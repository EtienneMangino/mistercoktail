class DosesController < ApplicationController

  def create
    @coktail = Coktail.find(params[:coktail_id])
    @dose = @coktail.doses.new(dose_params)
    if @dose.save
      redirect_to coktail_path(@coktail)
    else
      render 'coktails/show'
    end
  end

  def destroy
  end

  private
  def dose_params
    params.require(:dose).permit(:amount, :ingredient_id)
  end

end
