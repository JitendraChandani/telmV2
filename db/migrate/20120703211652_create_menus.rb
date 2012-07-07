class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :Title
      t.string :url
      t.integer :status
      t.integer :parent_menu_id

      t.timestamps
    end
  end
end
