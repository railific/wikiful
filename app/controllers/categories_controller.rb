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
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category
    else
      render "new"
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update_attributes(category_params)
      flash[:notice] = 'The category is successfully updated!'
      redirect_to edit_category_path
    end
  end


  def destroy
    Category.find(params[:id]).destroy
    redirect_to :action => 'index'
  end  
  
  private
  def category_params
    params.require(:category).permit(:name)
  end
    
    
end
