require './lib/ingredient'

describe Ingredient do
  before :each do
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
  end

  it 'exists' do
    expect(@ingredient1).to be_an(Ingredient)
  end

  it 'has a name, unit, and calories' do
    expect(@ingredient1.name).to eq("Cheese")
    expect(@ingredient1.unit).to eq("oz")
    expect(@ingredient1.calories).to eq(50)
  end
end