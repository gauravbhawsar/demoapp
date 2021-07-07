class ProductsController < ApplicationController
    
    def def index
        @product = Product.all;
    end
    def new 
        @product=Product.new
    end
    def def show
        @product = Product.find(params[:id])
    end
    
    def def create
        @product = Product.new(params[:product])
        if @product.save
          flash[:success] = "Object successfully created"
          redirect_to @product
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end
    def def update
        @product = Product.find(params[:id])
        if @product.update_attributes(params[:product])
          flash[:success] = "Object was successfully updated"
          redirect_to @product
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end

    
    
end