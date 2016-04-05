class RepairsController < ApplicationController

  def index
    @repair = Repair.all
  end

  def new
    @repair = Repair.new
    @address = params[:address]
  end

  def create
    @repair = Repair.new(repair_params)
    @repair.save
    redirect_to repair_path(@repair)
  end

  def show
    @repair = Repair.find(params[:id])
  end

  private

  def repair_params
    params.require(:repair).permit(:category, :address, :description)
  end
end
