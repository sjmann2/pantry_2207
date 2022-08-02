class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    ingredients = []
    @recipes.each do |recipe|
      recipe.ingredients.each do |ingredient|
        ingredients << ingredient.name
      end
    end
    ingredients.uniq
  end

  # COME BACK TO THIS
  def highest_calorie_meal
    total_calories = Hash.new { |h, k| h[k] = [] }
    @recipes.each do |recipe|
      total_calories[recipe] << recipe.total_calories
    end
    total_calories[:name].max { |cal_1, cal_2| cal_1[1] <=> cal_2[1] }
  end
end
