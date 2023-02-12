class MenuItem < ApplicationRecord
  belongs_to :parent, class_name: 'MenuItem', optional: true
  has_many :sub_menu_items, class_name: 'MenuItem', foreign_key: 'parent_id'
  belongs_to :title, class_name: 'Translation', foreign_key: 'translation_id', optional: true

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
    title[lang]
  end
end
