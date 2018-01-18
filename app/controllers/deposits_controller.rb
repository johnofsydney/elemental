class DepositsController < ApplicationController
  def index
    @deposits = Deposit.all
  end

  def new
    @deposit = Deposit.new
  end

  def edit
    @deposit = Deposit.find params[:id]
  end

  def show
    @deposit = Deposit.find_by :id => params[:id]
  end


  def create
    deposit = Deposit.create deposit_params
    if deposit.save
      redirect_to deposit
    else
      redirect_to root
    end
  end


  def update
    deposit = Deposit.find params[:id]
    deposit.update deposit_params
    redirect_to deposit
  end


  def destroy
    deposit = Deposit.find params[:id]
    deposit.destroy
    redirect_to deposits_path
  end

  private
  def deposit_params
    params.require(:deposit).permit(:name, :location, :quantity, :units)
  end
end
