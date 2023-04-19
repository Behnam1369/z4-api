class FieldType < ApplicationRecord
  has_one :translation, as: :Translatable, foreign_key: :record, foreign_type: :table, dependent: :destroy, inverse_of: :Translatable
  accepts_nested_attributes_for :translation
  validates_associated :translation
end
