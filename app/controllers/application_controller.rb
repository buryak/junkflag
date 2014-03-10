class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_filter :display_location

  # def location
  # 		if Rails.env.test? || Rails.env.development?
  # 			@location ||= Geocoder.search("192.206.151.131").first
  # 		else
  # 			@location ||= request.location
  # 		end
  # end

  # private
  # def display_location
  # 	Rails.logger.info "LOCATION was #{location.inspect}"
  # end
end
