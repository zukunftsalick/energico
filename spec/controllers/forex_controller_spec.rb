require 'rails_helper'

RSpec.describe ForexController, :type => :controller do

	describe 'GET hang_seng' do
		before { 
			allow_any_instance_of(HangSengJob).to receive(:perform)
		}

		subject { get :hang_seng }
		
		it 'works' do	
			expect(subject).to be_success
		end	
	end

end
