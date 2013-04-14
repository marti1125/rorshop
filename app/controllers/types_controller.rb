class TypesController < ApplicationController
	def index
		@types = Type.all
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
	def show
		@type = Type.find(params[:id])
	end
end