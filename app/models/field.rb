class Field < ApplicationRecord
  has_many :field_values, as: :field_valuable

  has_one :translation, as: :Translatable, foreign_key: :record, foreign_type: :table, dependent: :destroy, inverse_of: :Translatable
  accepts_nested_attributes_for :translation

  belongs_to :field_type
  belongs_to :fieldable, polymorphic: true, foreign_key: :record, foreign_type: :table

  validates :field_type_id, presence: true
  validates :fieldable, presence: true
end
