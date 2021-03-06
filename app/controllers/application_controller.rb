class ApplicationController < ActionController::Base
	# before_action :authenticate_user!
	before_action :configure_permitted_parameters,if: :devise_controller?

	def after_sign_in_path_for(resource)
		book_images_path
	end

	def after_sign_out_path_for(resource)
		'/'
	end

	private
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
	end

	def set_book_new
		@book_image_new =BookImage.new
	end
end
