class ItemsController < ApplicationController
	def index
		@items = Item.all
		respond_to do |format|
			format.html
			format.json {render json: @items}
		end
	end

	def show
		@item = Item.find(params[:id])
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(item_params)

		if @item.save
			redirect_to items_url
		else
			render :new
		end
	end

	def destroy
		@item = Item.find(params[:id])
		@item.destroy
		redirect_to items_url
	end

	private
	def item_params
		params.require(:item).permit(:title, :description, :picture, :location)
	end
end
