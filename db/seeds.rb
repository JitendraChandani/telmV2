# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
school = School.create(:name=>'Demo School',:address=>'Demo School,Demo Street,Demo',:contact_person=>'Mr Demo',:contact_no=>'123456',:no_of_licences=>100)
superadmin = Role.create(:name=>'Super Admin')
admin = Role.create(:name=>'School Admin')
faculty = Role.create(:name=>'Faculty Member')
parent  = Role.create(:name=>'Parent')
student = Role.create(:name=>'Student')
User.create(:email=>'telmadmin@telm.com',:password=>'123456',:password_confirmation=>'123456',:role_id=>superadmin.id,:school_id=>school.id)
User.create(:email=>'schooladmin@telm.com',:password=>'123456',:password_confirmation=>'123456',:role_id=>admin.id,:school_id=>school.id)
User.create(:email=>'faculty@telm.com',:password=>'123456',:password_confirmation=>'123456',:role_id=>faculty.id,:school_id=>school.id)
User.create(:email=>'parent@telm.com',:password=>'123456',:password_confirmation=>'123456',:role_id=>parent.id,:school_id=>school.id)
User.create(:email=>'student1@telm.com',:password=>'123456',:password_confirmation=>'123456',:role_id=>student.id,:school_id=>school.id)
User.create(:email=>'student2@telm.com',:password=>'123456',:password_confirmation=>'123456',:role_id=>student.id,:school_id=>school.id)
User.create(:email=>'student3@telm.com',:password=>'123456',:password_confirmation=>'123456',:role_id=>student.id,:school_id=>school.id)
User.create(:email=>'student4@telm.com',:password=>'123456',:password_confirmation=>'123456',:role_id=>student.id,:school_id=>school.id)

admission = Menu.create(:Title=>'School',:url=>'/school/index',:status=>1,:role_id=>superadmin.id,:description=>'Manage Schools ')
Menu.create(:Title=>'Add new school',:url=>'/school/new',:status=>1,:role_id=>superadmin.id,:description=>'Add new School',:parent_menu_id=>admission.id)

menus = Menu.create(:Title=>'Menu Editor',:url=>'/menubar/index',:status=>1,:role_id=>superadmin.id,:description=>'Control access to the modules of application')
report = Menu.create(:Title=>'Reports',:url=>'/report/index',:status=>1,:role_id=>superadmin.id,:description=>'Summarized details of application')

admission = Menu.create(:Title=>'Admissions',:url=>'/admission/index',:status=>1,:role_id=>admin.id,:description=>'Pending admission form list',:school_id=>school.id)
Menu.create(:Title=>'Archived Forms',:url=>'/admission/archived',:status=>1,:role_id=>admin.id,:description=>'Archived admission form list',:school_id=>school.id,:parent_menu_id=>admission.id)
Menu.create(:Title=>'Rejected Forms',:url=>'/admission/rejected',:status=>1,:role_id=>admin.id,:description=>'Rejected admission form list',:school_id=>school.id,:parent_menu_id=>admission.id)
Menu.create(:Title=>'Accepted Forms',:url=>'/admission/accepted',:status=>1,:role_id=>admin.id,:description=>'Accepted admission form list',:school_id=>school.id,:parent_menu_id=>admission.id)