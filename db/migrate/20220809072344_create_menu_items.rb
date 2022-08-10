# frozen_string_literal: true

# Menu Items Migration
class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.string :english
      t.string :persian
      t.string :arabic
      t.string :spanish
      t.string :french
      t.string :turkish
      t.string :portugess
      t.string :dutch
      t.string :russian
      t.string :italian
      t.string :hindi
      t.string :urdu
      t.string :chiness
      t.string :japaness
      t.string :korean
      t.string :thai
      t.string :malay
      t.string :indonesian
      t.string :component
      t.timestamps
    end
    add_reference :menu_items, :parent, index: true
  end
end
