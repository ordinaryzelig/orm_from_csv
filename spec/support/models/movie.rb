class Movie < Struct.new(:title, :director_id)

  extend ORMFromCSV

  def initialize(attributes = {})
    attributes.each do |field, value|
      send(:"#{field}=", value)
    end
  end

  def attributes
    ['title', 'director_id'].inject({}) do |atts, field|
      atts[field] = send(field)
      atts
    end
  end

end
