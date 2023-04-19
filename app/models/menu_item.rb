class MenuItem < ApplicationRecord
  belongs_to :parent, class_name: 'MenuItem', optional: true
  has_many :sub_menu_items, class_name: 'MenuItem', foreign_key: 'parent_id'
  has_one :translation, as: :Translatable, foreign_key: :record, foreign_type: :table, dependent: :destroy, inverse_of: :Translatable
  accepts_nested_attributes_for :translation
  validates_associated :translation

  def children(lang)
    arr = []
    if sub_menu_items.present?
      sub_menu_items.map do |child|
        arr << { id: child.id, title: child.get_title(lang), children: child.children(lang) }
      end
    end
    arr
  end

  def get_title(lang)
    translation[lang]
  end
end
