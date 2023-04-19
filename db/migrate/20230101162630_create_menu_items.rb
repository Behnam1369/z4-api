class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.timestamps
    end
    add_reference :menu_items, :parent, index: true
  end
end
