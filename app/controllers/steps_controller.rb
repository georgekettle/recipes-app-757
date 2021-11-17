class StepsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @step = Step.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @step = Step.new(step_params)
    @step.recipe = @recipe
    if @step.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

  def step_params
    params.require(:step).permit(:photo, :description, :ingredients)
  end
end
