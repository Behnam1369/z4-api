class Center < ApplicationRecord
  belongs_to :translation, class_name: 'Translation', foreign_key: 'translation_id'
  belongs_to :center_type
  belongs_to :centerable, polymorphic: true, foreign_key: :record, foreign_type: :table
  has_many :field_values, as: :field_valuable
  has_many :operation_logs, as: :operation_logable

  validates :translation_id, presence: true
  validates :center_type_id, presence: true
  
end
