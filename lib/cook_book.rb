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
    recipe_calories =
    @recipes.flat_map do |recipe|
      [recipe, recipe.total_calories]
      #recipe object, total calories
    end 
    recipe_calories.max { |meal_1, meal_2| meal_1[1] <=> meal_2[1] }
    end
  end
