require 'rails_helper'

RSpec.describe HangSengJob, :type => :job do
	describe '#perform' do
		let(:currencies) { [code: 'XYZ', buy: '12.3', sell: '12.6']}

		it 'stores currencies' do
			expect(Crawlers::HangSeng).to receive(:crawl).and_return(currencies)

			expect {HangSengJob.new.perform}.to change {Currency.count}.by(1)
		end
	end
end
