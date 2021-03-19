class RecipesController < ApplicationController
    before_action :set_recipe, only: [:edit, :show, :update]
    def index
        
    end

    def create
        @recipe = Recipe.create(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    def new
        @recipe = Recipe.new
    end

    def show
    end

    def edit
    end

    def update
        @recipe.update(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    private
    def set_recipe
        @recipe = Recipe.find_by(id: params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:name, :ingredient_ids => [])
    end
end
