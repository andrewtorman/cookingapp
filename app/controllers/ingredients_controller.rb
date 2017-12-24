class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
    @ingredient_types = IngredientType.all
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    @ingredient_types = IngredientType.all
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully created.' }
        format.json { render json: @ingredient, status: :created, location: @ingredient }
      else
        format.html { render action: 'new' }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @ingredient = Ingredient.find(params[:id])

    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully created.' }
        format.json { render json: @ingredient, status: :created, location: @ingredient }
      else
        format.html { render action: 'new' }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:ingredient_type_id, :quantity)
  end
end