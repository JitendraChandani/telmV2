class AddSchoolIdRoleIdToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :school_id, :integer
    add_column :menus, :role_id, :integer
  end
end
