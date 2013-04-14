class TypesController < ApplicationController
	def index
		@types = Type.all
	end
	def show
		@type = Type.find(params[:id])
	end
	def new
		@type = Type.new
	end
	def create
		@type = Type.new(params[:type])
		if @type.save
			redirect_to :action => :show, :id => @type.id
		else
			render 'new'
		end
	end
	def edit
		@type = Type.find(params[:id])
	end
	def update
		@type = Type.find(params[:id])
		if @type.update_attributes(params[:type])
			redirect_to :action => :show, :id => @type.id
		else
			render 'edit'
		end
	end
	def destroy
		@type = Type.find(params[:id])
		@type.destroy
		redirect_to :action => :index
	end
end