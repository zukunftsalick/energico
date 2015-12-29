class ForexController < ApplicationController
	def hang_seng
		HangSengJob.new.perform
		render plain: 'none'
	end
end
