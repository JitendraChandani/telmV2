class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.text :address
      t.string :contact_person
      t.integer :contact_no
      t.integer :no_of_licences

      t.timestamps
    end
  end
end
