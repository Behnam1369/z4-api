class CreateCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :centers do |t|
      t.integer :code
      t.references :center_type, null: false, foreign_key: true
      t.boolean :active
      t.string :table
      t.integer :record

      t.timestamps
    end
  end
end
