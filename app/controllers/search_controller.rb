require 'open-uri'
class SearchController < ApplicationController
	def index
		query = params.fetch(:query, 'wood')
		url = "https://openapi.etsy.com/v2/listings/active?api_key=xucka4d9zby716dr30i7vfgi&keywords=#{query}"
		response = JSON.parse(open(url).read)
		@results = response["results"]
	end
end
