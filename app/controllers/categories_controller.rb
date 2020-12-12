class CategoriesController < ApplicationController
    def index
        @category = Category.new
        @categories = Category.all
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to categories_path
        end
    end

    def category_params
        params.require(:category).permit(:name)
    end    
end
