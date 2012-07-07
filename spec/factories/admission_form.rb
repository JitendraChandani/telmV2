FactoryGirl.define do
  factory :admission_form,:class=>AdmissionForm do
    first_name "Ryan"
    last_name "Heath"
    email "ryan@rpheath.com"
    contact_no 1234567890
    gender '1'
    nationality 'Indian'
    blood_group 'O+'
    religion 'Hindu'
    mother_tongue 'Hindi'
    prev_school_name 'Previous school'
    prev_school_address 'abcd'
    standard '1'
    residence_type 1
    father_name 'Mr A'
    occupation 'Business'
    father_email_address 'a@a.com'
    mother_name 'Mrs B'
    permanent_address 'abcd'
    present_address 'abcd'
    status 1
    school_id 1
  end
end