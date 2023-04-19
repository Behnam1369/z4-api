class CreateFields < ActiveRecord::Migration[7.0]
  def change
    create_table :fields do |t|
      t.references :field_type, null: false, foreign_key: true
      t.boolean :required, default: false
      t.string :table
      t.integer :record

      t.timestamps
    end
  end
end
