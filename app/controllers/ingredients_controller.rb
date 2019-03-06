# frozen_string_literal: true

class IngredientsController < ApplicationController
  before_action :set_ingredient, only: %i[show update destroy]

  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def show
    render json: @ingredient
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    if @ingredient.save
      render json: @ingredient, status: :created
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  def update
    if @ingredient.update(ingredient_params)
      render json: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @ingredient.destroy
    head :no_content
  end

  def ingredient_params
    params.require(:ingredients).permit(:name, :unit)
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
