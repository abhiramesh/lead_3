class StaticPagesController < ApplicationController

	def home
		if current_user
			@user = current_user
		else
			@user = User.new
		end
	end

	def thanks
	end

	def privacy
	end

	def terms
	end

	def fees
	end

	def about_us
	end
	
end
