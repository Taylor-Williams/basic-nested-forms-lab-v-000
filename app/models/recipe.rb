class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ing_at)
    self.ingredients << Ingredient.find_or_create_by(name: ing_at[:name], quantity: ing_at[:quantity])
  end
end
