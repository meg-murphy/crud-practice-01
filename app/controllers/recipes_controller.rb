class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
  end

  def create
    @recipe = Recipe.new(name: params[:name], ingredients: params[:ingredients], image: params[:image], directions: params[:directions], prep_time: params[:prep_time])
    @recipe.save

    flash[:success] = "New recipe added!"

    redirect_to "/recipes"
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
  end

  def update
    recipe = Recipe.find_by(id: params[:id])
    recipe.assign_attributes(name: params[:name], ingredients: params[:ingredients], image: params[:image], directions: params[:directions], prep_time: params[:prep_time])
    recipe.save

    flash[:success] = "Recipe updated!"

    redirect_to "/recipes"
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy

    flash[:danger] = "Recipe deleted!"

    redirect_to "/recipes"
  end

end
