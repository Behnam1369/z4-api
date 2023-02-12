class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.references :translation, foreign_key: true
      t.timestamps
    end
    add_reference :menu_items, :parent, index: true
  end
end
