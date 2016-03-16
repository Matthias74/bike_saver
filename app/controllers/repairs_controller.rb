class RepairsController < ApplicationController
  def new
    @repair = Repair.new
    @address = params[:address]
  end

  def create
    @repair = Repair.new(repair_params)
    @repair.save
    redirect_to root_path
  end

  private

  def repair_params
    params.require(:repair).permit(:category, :address, :description)
  end
end
