class AddEmailStatusToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :email, :string
    add_column :schools, :status_id, :integer
  end
end
