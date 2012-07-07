class Menu < ActiveRecord::Base
  attr_accessible :Title, :parent_menu_id, :status, :url,:role_id,:description,:school_id
  has_many :sub_menus ,
    :foreign_key => :parent_menu_id,
    :class_name => 'Menu'

  def self.main(role_id,school_id)
    return Menu.all(:conditions=>["parent_menu_id is null and role_id = ?",role_id]) if Role.find(role_id) == Role.super_admin
    return Menu.all(:conditions=>["parent_menu_id is null and role_id = ? and school_id=?",role_id,school_id]) if Role.find(role_id) != Role.super_admin
  end
end
