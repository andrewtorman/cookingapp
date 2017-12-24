class Admin::IngredientTypesController < ApplicationController
  def index
    @ingredient_types = IngredientType.all
  end

  def new
    @ingredient_type = IngredientType.new
  end

  def create
    @ingredient_type = IngredientType.new(ingredient_type_params)

    respond_to do |format|
      if @ingredient_type.save
        format.html { redirect_to [:admin, @ingredient_type], notice: 'Ingredient type was successfully created.' }
        format.json { render json: @ingredient_type, status: :created, location: @ingredient_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @ingredient_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @ingredient_type = IngredientType.find(params[:id])
  end

  def ingredient_type_params
    params.require(:ingredient_type).permit(:name)
  end
end
