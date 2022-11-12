#./spec/requests/sessions_spec.rb
require 'rails_helper'
require 'capybara/rails'
RSpec.describe "Sessions" ,:type => :request do
  
  it "signs user in and out" do
    user = User.create(email: 'admin@cerner.com', password: "admin123", password_confirmation: "admin123", employee_id: 1) 
    visit 'users/sign_in'
    sign_in user
    get root_path
  end
end


