class ItemsController < ApplicationController
	def index
		@items = Item.all
		# @hash = Gmap.build_markers(@items) do |item, marker|
		# 	marker.lat item.latitude
		# 	marker.lng item.longitude

		# 	# marker.infowindow render_to_string(:partial => "infowindow", :locals => { :object => item})
		# 	marker.picture({
		# 		"url" => "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
		# 		"width" =>  32,
		# 		"height" => 32})
		# end
		respond_to do |format|
			format.html
			format.json {render json: @hash}
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
