class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, count)
    @stock[ingredient] += count
  end

  def enough_ingredients_for?(recipe)
    #issue with the order they're being compared in?
    enough_ingredients_for =
      recipe.ingredients_required.map do |recipe_ingredient, recipe_count|
        @stock.map do |stock_ingredient, stock_count|
          if @stock.include?(recipe_ingredient) && stock_count >= recipe_count
          end
        end
      end
    enough_ingredients_for.all?(true)
  end
end
