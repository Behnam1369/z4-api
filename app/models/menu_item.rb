class MenuItem < ApplicationRecord
  has_many :sub_items, class_name: 'MenuItem'
  belongs_to :parent, class_name: 'MenuItem', optional: true
end
