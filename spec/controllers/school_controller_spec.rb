require 'spec_helper'

describe SchoolController do
  before(:each) do
    @school = FactoryGirl.create(:school)
    @user = FactoryGirl.create(:user)
    sign_in @user
  end
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "POST 'create'" do
    it "returns http success" do
      post 'create',:school=>{:name=>'a',
                              :address=>'abcd',
                              :contact_person=>'aaaa',
                              :contact_no=>1234567890,
                              :email=>'a@a.com',
                              :status_id=> 1,
                              :no_of_licences=>50
                    }
      response.should be_redirect
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit',:id=>@school.id
      response.should be_success
    end
  end

  describe "GET 'update'" do
    it "returns http success" do
      get 'update',:id=>1
      response.should be_redirect
    end
  end

  describe "GET 'delete'" do
    it "returns http success" do
      get 'delete'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show',:id=>1
      response.should be_success
    end
  end

end
