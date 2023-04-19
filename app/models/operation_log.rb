class OperationLog < ApplicationRecord
  belongs_to :user
  belongs_to :operation_logable, polymorphic: true, foreign_key: :record, foreign_type: :table
  belongs_to :translation, class_name: :Translation, foreign_key: :translation_id

  validates :user, presence: true
  validates :operation_logable, presence: true
  validates :time, presence: true
end
