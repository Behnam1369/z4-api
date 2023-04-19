class CreateCenterTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :center_types do |t|
      t.integer :first
      t.integer :last

      t.timestamps
    end
  end
end
