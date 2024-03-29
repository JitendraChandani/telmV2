require 'spec_helper'

describe HomeController do
  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_redirect
    end
  end
end
