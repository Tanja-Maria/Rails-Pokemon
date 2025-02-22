class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all
  end

  def new
    @trainer = Trainer.new
  end

  def show
    @trainer = Trainer.find(params[:id])
    @pokeballs = @trainer.pokeballs
  end

  def create
    @trainer = Trainer.new(trainer_params)
    if @trainer.save
      redirect_to @trainer
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def trainer_params
    params.require(:trainer).permit(:name, :age, :photo)
  end
end
