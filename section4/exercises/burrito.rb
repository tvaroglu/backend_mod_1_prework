# Add the following methods to this burrito class and
# call the methods below the class:
# 1. add_topping
# 2. remove_topping
# 3. change_protein

class Burrito
  attr_reader :protein, :base, :toppings
  def initialize(protein, base, toppings)
    @protein  = protein
    @base     = base
    @toppings = toppings
  end

  def get_info()
    puts "Protein is: '#{self.protein}'"
    puts "Base is: '#{self.base}'"
    puts "Toppings are: '#{self.toppings}'"
  end

  def add_topping(topping)
    toppings.push(topping)
  end

  def remove_topping(topping)
    toppings.delete(topping)
  end

  def change_protein(protein)
    @protein = protein
  end

end

dinner = Burrito.new("Beans", "Rice", ["cheese", "salsa", "guacamole"])
# p dinner.protein
# p dinner.base
# p dinner.toppings

dinner.get_info()

dinner.add_topping('sour cream')
dinner.get_info()

dinner.remove_topping('salsa')
dinner.get_info()

dinner.change_protein('steak')
dinner.get_info()
