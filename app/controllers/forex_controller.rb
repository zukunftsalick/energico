class ForexController < ApplicationController
	def hang_seng
		Crawlers::HangSeng.crawl.each do |currency|
			Currency.create(currency)
		end
		render plain: 'none'
	end
end
