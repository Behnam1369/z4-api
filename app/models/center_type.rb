class CenterType < ApplicationRecord
  has_many :fields, as: :Translatable, foreign_key: :record, foreign_type: :table, dependent: :destroy, inverse_of: :fieldable
  accepts_nested_attributes_for :fields

  has_many :operation_logs, as: :operation_logable
  
  has_one :translation, as: :Translatable, foreign_key: :record, foreign_type: :table, dependent: :destroy, inverse_of: :Translatable
  accepts_nested_attributes_for :translation

  validates_associated :translation
end