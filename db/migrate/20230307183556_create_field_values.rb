class CreateFieldValues < ActiveRecord::Migration[7.0]
  def change
    create_table :field_values do |t|
      t.string :value
      t.string :table
      t.integer :record

      t.timestamps
    end
  end
end
