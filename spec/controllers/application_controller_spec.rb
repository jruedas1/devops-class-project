require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
	
	describe "destroy_user_session_path, method: :delete" do
		it "should log out the user" do
			user = FactoryBot.build(:user)
			sign_in(user)
			page.driver.submit :delete, destroy_user_session_path, {}
			expect(subject.current_user).to eq(nil)
		end
	end

end