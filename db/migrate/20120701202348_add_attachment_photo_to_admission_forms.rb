class AddAttachmentPhotoToAdmissionForms < ActiveRecord::Migration
  def self.up
    change_table :admission_forms do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :admission_forms, :photo
  end
end
