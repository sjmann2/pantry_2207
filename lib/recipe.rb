class Recipe
  attr_reader :name,
              :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
    @ingredients = []
  end

  def add_ingredient(ingredient, count)
    @ingredients_required[ingredient] += count
  end

  def ingredients
    @ingredients_required.keys
  end
end
