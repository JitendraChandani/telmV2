require 'spec_helper'

describe Role do
  #pending "add some examples to (or delete) #{__FILE__}"
  it " should have super admin role" do
    Role.super_admin.name.should == 'Super Admin'
  end

  it "should have school admin role " do
    Role.school_admin.name.should == 'School Admin'
  end

  it "should have faculty role" do
   #Role.faculty.name.should == 'Faculty'
  end

  it "should have Parent role " do
    Role.guardian.name.should == 'Parent'
  end

  it "should have student role" do
    Role.student.name.should == "Student"
  end
end
