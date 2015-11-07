class KitchensController < ApplicationController
  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.create(kitchen_params)
    if @kitchen.save
      redirect_to @kitchen
    else
      flash.now[:error] = 'Por favor, insira os dados obrigatórios'
      render 'new'
    end
  end

  def show
    @kitchen = Kitchen.find(params[:id])
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:name)
  end
end
