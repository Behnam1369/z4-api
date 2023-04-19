class CreateTranslations < ActiveRecord::Migration[7.0]
  def change
    create_table :translations do |t|
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
      t.string :swedish
      t.string :hindi
      t.string :urdu
      t.string :chiness
      t.string :japaness
      t.string :korean
      t.string :thai
      t.string :malay
      t.string :indonesian
      t.string :table
      t.integer :record
      t.timestamps
    end
  end
end
