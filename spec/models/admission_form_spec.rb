require 'spec_helper'

describe AdmissionForm do

  before(:each) do
    @pending_form = FactoryGirl.create(:admission_form)
    @form = AdmissionForm.new({
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
      })
  end

  it { should validate_presence_of(:standard) }
  it { should validate_presence_of(:contact_no) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:father_email_address) }
  it { should validate_presence_of(:father_name) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:gender) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:mother_name) }
  it { should validate_presence_of(:mother_tongue) }
  it { should validate_presence_of(:nationality) }
  it { should validate_presence_of(:occupation) }
  it { should validate_presence_of(:present_address) }
  it { should validate_presence_of(:permanent_address) }
  it { should validate_presence_of(:prev_school_name) }
  it { should validate_presence_of(:prev_school_address) }
  it { should validate_presence_of(:religion) }
  it { should validate_presence_of(:residence_type) }
  it { should validate_presence_of(:school_id) }

  it "should have a valid name" do
    @pending_form.name.should == "Ryan Heath"
  end

  it "should have a status" do
    @form.application_status.should == 'Accepted'
    @form.status = nil
    @form.application_status.should == 'Pending'
    @form.status = 2
    @form.application_status.should == 'Archived'
    @form.status = 3
    @form.application_status.should == 'Rejected'
  end
end
