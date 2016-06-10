class StaticPagesController < ApplicationController
	def about_us
		@title = "О нас"
	end

	def contacts
		@title = "Наши контакты"
	end
end
