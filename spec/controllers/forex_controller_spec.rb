require 'rails_helper'

RSpec.describe ForexController, :type => :controller do

	describe 'GET hang_seng' do
		let(:example_file) {File.read('spec/support/examples/hang_seng.json') }

		it 'assigns @currencies' do
			get :hang_seng
			expect(assigns(:currencies)).not_to be_nil
		end
	end

end
