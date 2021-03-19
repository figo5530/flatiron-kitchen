class IngredientsController < ApplicationController
    before_action :set_ingredient, only: [:edit, :update, :show]
    def create
        @ingredient = Ingredient.create(ingredient_params)
        redirect_to ingredient_path(@ingredient)
    end

    def new
        @ingredient = Ingredient.new
    end

    def show
    end

    def edit
    end

    def update
        @ingredient.update(ingredient_params)
        redirect_to ingredient_path(@ingredient)
    end

    private
    def set_ingredient
        @ingredient = Ingredient.find_by(id: params[:id])
    end

    def ingredient_params
        params.require(:ingredient).permit(:name)
    end
end
