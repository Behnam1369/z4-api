class FieldValue < ApplicationRecord
  belongs_to :field
  belongs_to :field_valuable, polymorphic: true, foreign_key: :record, foreign_type: :table
  belongs_to :field_type, through: :field

  validates :field, presence: true
  validates :fieldable, presence: true
end
