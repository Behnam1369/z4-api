class CreateOperationLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :operation_logs do |t|
      t.datetime :time
      t.string :old
      t.string :new
      t.string :table
      t.integer :record
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
