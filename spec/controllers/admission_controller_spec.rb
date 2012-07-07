require 'spec_helper'

describe AdmissionController do
  before(:each) do
    @user = FactoryGirl.create(:user)
    @admission_form = FactoryGirl.create(:admission_form)
    sign_in @user
  end
  describe "POST 'create'" do
    it "returns http success" do
      post 'create',:admission_form=>{
      :first_name=>"Ryan",
      :last_name=> "Heath",
      :email=> "ryan@rpheath.com",
      :contact_no=> 1234567890,
      :gender=> '1',
      :nationality=> 'Indian',
      :blood_group=> 'O+',
      :religion=> 'Hindu',
      :mother_tongue=> 'Hindi',
      :prev_school_name =>'Previous school',
      :prev_school_address=> 'abcd',
      :standard=> '1',
      :residence_type=> 1,
      :father_name=> 'Mr A',
      :occupation=> 'Business',
      :father_email_address=> 'a@a.com',
      :mother_name=> 'Mrs B',
      :permanent_address=> 'abcd',
      :present_address=> 'abcd',
      :status=> 1,
      :school_id=> 1
      }
      response.should be_redirect
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit'
      response.should be_success
    end
  end

  describe "post 'update'" do
    it "returns http success" do
      post 'update',:id=>@admission_form.id,:admission_form=>{:status=>1}
      response.should be_redirect
    end
  end

  describe "GET 'delete'" do
    it "returns http success" do
      get 'delete'
      response.should be_success
    end
  end

  describe "GET 'archive'" do
    it "returns http success" do
      get 'archive'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show',:id=>@admission_form.id
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end
