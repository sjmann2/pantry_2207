require "./lib/ingredient"
require "./lib/recipe"
require "./lib/cook_book"

describe CookBook do
  describe "Iteration 2" do
    before :each do
      @recipe1 = Recipe.new("Mac and Cheese")
      @recipe2 = Recipe.new("Cheese Burger")
      @cookbook = CookBook.new
    end

    it "exists" do
      expect(@cookbook).to be_a(CookBook)
    end

    it "can add recipes" do
      @cookbook.add_recipe(@recipe1)
      @cookbook.add_recipe(@recipe2)

      expect(@cookbook.recipes).to eq([@recipe1, @recipe2])
    end
  end

  describe "Iteration 3" do
    before :each do
      @cookbook = CookBook.new
      @ingredient1 = Ingredient.new({ name: "Cheese", unit: "C", calories: 100 })
      @ingredient2 = Ingredient.new({ name: "Macaroni", unit: "oz", calories: 30 })
      @ingredient3 = Ingredient.new({ name: "Ground Beef", unit: "oz", calories: 100 })
      @ingredient4 = Ingredient.new({ name: "Bun", unit: "g", calories: 75 })
      @recipe1 = Recipe.new("Mac and Cheese")
      @recipe2 = Recipe.new("Cheese Burger")
      @recipe1.add_ingredient(@ingredient1, 2)
      @recipe1.add_ingredient(@ingredient2, 8)
      @recipe2.add_ingredient(@ingredient1, 2)
      @recipe2.add_ingredient(@ingredient3, 4)
      @recipe2.add_ingredient(@ingredient4, 1)
      @cookbook.add_recipe(@recipe1)
      @cookbook.add_recipe(@recipe2)
    end

    it "can calculate the highest calorie meal" do
      expect(@cookbook.ingredients).to eq(["Cheese", "Macaroni", "Ground Beef", "Bun"])
      expect(@cookbook.highest_calorie_meal).to eq(@recipe2)
    end
  end
end
