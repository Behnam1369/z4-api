class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :parent_id

  # rubocop:disable Metrics/CyclomaticComplexity
  def title
    lang = instance_options[:lang]
    case lang
    when 'persian'
      object.persian
    when 'arabic'
      object.arabic
    when 'spanish'
      object.spanish
    when 'french'
      object.french
    when 'turkish'
      object.turkish
    when 'portugess'
      object.portugess
    when 'dutch'
      object.dutch
    when 'russian'
      object.russian
    when 'italian'
      object.italian
    when 'hindi'
      object.hindi
    when 'urdu'
      object.urdu
    when 'chiness'
      object.chiness
    when 'japaness'
      object.japaness
    when 'korean'
      object.korean
    when 'thai'
      object.thai
    when 'malay'
      object.malay
    when 'indonesian'
      object.indonesian
    else
      object.english
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
