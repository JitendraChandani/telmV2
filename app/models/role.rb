class Role < ActiveRecord::Base
  attr_accessible :name

  def self.super_admin
    Role.first(:conditions=>["name= ?",'Super Admin'])
  end
  def self.school_admin
    Role.first(:conditions=>["name= ?",'School Admin'])
  end
  def self.faculty
    Role.first(:conditions=>["name= ?",'Faculty'])
  end
  def self.guardian
    Role.first(:conditions=>["name= ?",'Parent'])
  end
  def self.student
    Role.first(:conditions=>["name= ?",'Student'])
  end

end
