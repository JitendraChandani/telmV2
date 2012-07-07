class AddStatusSchoolIdToAdmissionForm < ActiveRecord::Migration
  def change
    add_column :admission_forms, :status, :integer
    add_column :admission_forms, :school_id, :integer
  end
end
