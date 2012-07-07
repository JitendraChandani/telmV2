class CreateAdmissionForms < ActiveRecord::Migration
  def change
    create_table :admission_forms do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :contact_no
      t.string :gender
      t.string :nationality
      t.string :blood_group
      t.string :religion
      t.string :mother_tongue
      t.string :prev_school_name
      t.text :prev_school_address
      t.string :standard
      t.integer :residence_type
      t.string :father_name
      t.string :occupation
      t.string :father_email_address
      t.string :mother_name
      t.text :permanent_address
      t.text :present_address

      t.timestamps
    end
  end
end
