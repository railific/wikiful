class CategoriesController < ApplicationController
  def index
    @categories = Category.order(:name)
  end
  
  def show
    @category = Category.find(params[:id])
  end
  
  def new
    @category = Category.new
  end
  
  def create

  end
  
  
  private
    def category_params

    end
    
end
