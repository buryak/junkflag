class ItemsController < ApplicationController
	def index
		@items = Item.all
		@hash = Gmaps4rails.build_markers(@items) do |item, marker|
  		marker.lat item.latitude
  		marker.lng item.longitude
  		marker.infowindow item.description
  		marker.picture({
       "url" => "http://aux.iconpedia.net/uploads/1331985062176136161.png",
       "width" =>  32,
       "height" => 32})
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
