class AdmissionForm < ActiveRecord::Base
  attr_accessible :status, :school_id, :blood_group, :standard, :contact_no, :email, :father_email_address, :father_name, :first_name, :gender, :last_name, :mother_name, :mother_tongue, :nationality, :occupation, :permanent_address, :present_address, :prev_school_address, :prev_school_name, :religion, :residence_type, :photo
  has_attached_file :photo,:storage => :s3,:s3_credentials => "#{Rails.root}/config/s3.yml"

  validates_presence_of :standard
  validates_presence_of :contact_no
  validates_presence_of :email
  validates_presence_of :father_email_address
  validates_presence_of :father_name
  validates_presence_of :first_name
  validates_presence_of :gender
  validates_presence_of :last_name
  validates_presence_of :mother_name
  validates_presence_of :mother_tongue
  validates_presence_of :nationality
  validates_presence_of :occupation
  validates_presence_of :present_address
  validates_presence_of :permanent_address
  validates_presence_of :prev_school_name
  validates_presence_of :prev_school_address
  validates_presence_of :religion
  validates_presence_of :residence_type
  validates_presence_of :school_id

  scope :pending,  :conditions => ["status = ?", nil]
  scope :accepted, :conditions => ["status = ?", 1]
  scope :archived, :conditions => ["status = ?", 2]
  scope :rejected, :conditions => ["status = ?", 3]

  def name
    return self.first_name + " " + self.last_name
  end

  def application_status
    return 'Pending' if self.status == nil
    return 'Accepted' if self.status == 1
    return 'Archived' if self.status == 2
    return 'Rejected' if self.status == 3
  end
end
