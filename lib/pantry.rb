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
    #check that ingredients required matches
    #the stock ingredients in the correct quantity
    enough_ingredients_for =
      recipe.ingredients_required.flat_map do |recipe_ingredient, recipe_count|
        @stock.map do |stock_ingredient, stock_count|
          stock_ingredient == recipe_ingredient && stock_count >= recipe_count
     
      end
    end
    # enough_ingredients_for.all?(true)
  end
end
