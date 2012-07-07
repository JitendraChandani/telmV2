class School < ActiveRecord::Base
  attr_accessible :address, :contact_no, :contact_person, :name, :no_of_licences, :email, :status_id
end
