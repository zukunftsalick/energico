require 'rails_helper'

RSpec.describe ForexController, :type => :controller do

	describe 'GET hang_seng' do
		let(:currencies) { [code: 'XYZ', buy: '12.3', sell: '12.6']}

		it 'creates currencies' do
			expect(Crawlers::HangSeng).to receive(:crawl).and_return(currencies)
			expect {
				get :hang_seng
			}.to change {Currency.count}.by(1)
		end
	end

end
