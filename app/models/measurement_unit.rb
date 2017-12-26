class MeasurementUnit

  attr_reader :id, :name, :abbreviation

  def initialize(name:, abbreviation:)
    @id = id
    @name = name
    @abbreviation = abbreviation  
  end

  MeasurementUnit.new(name: "ounce", abbreviation: "oz")
  MeasurementUnit.new(name: "cup", abbreviation: "cup")
  MeasurementUnit.new(name: "pint", abbreviation: "pint")
  MeasurementUnit.new(name: "quart", abbreviation: "quart")
  MeasurementUnit.new(name: "gallon", abbreviation: "gallon")

  MeasurementUnit.new(name: "teaspoon", abbreviation: "tsp")
  MeasurementUnit.new(name: "tablespoon", abbreviation: "tbsp")

end