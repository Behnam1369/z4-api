class Translation < ApplicationRecord
  belongs_to :Translatable, polymorphic: true, foreign_key: :record, foreign_type: :table, inverse_of: :translation
end