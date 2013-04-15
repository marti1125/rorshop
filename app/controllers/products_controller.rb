class ProductsController < ApplicationController
	def index
		@products = Product.all
	end
	def show
		@product = Product.find(params[:id])
	end
	def new
		@types = Type.all
		@product = Product.new
	end
	def create
		#@type = Post.find(params[:post_id])
		@product = Product.new(params[:product])
		if @product.save
			redirect_to :action => :show, :id => @product.id
		else
			render 'new'
		end
	end
	def edit
		@product = Product.find(params[:id])
	end
	def update
		@product = Product.find(params[:id])
		if @product.update_attributes(params[:product])
			redirect_to :action => :show, :id => @product.id
		else
			render 'edit'
		end
	end
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to :action => :index
	end
end
