require './lib/animal'

class Zoo
  attr_reader :name, :street, :city, :state, :zip_code, :inventory

  def initialize (name, street, city, state, zip_code)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip_code = zip_code
    @inventory = []
    @animal_count = 0
  end

  def address
    "#{@street} #{@city}, #{@state} #{@zip_code}"
  end

  def add_animal(animal)
    @inventory << animal
  end

  def animal_count
    @inventory.length
  end

  def animals_older_than(age)
    @inventory.find_all do |animal|
      animal.age_weeks > age
    end
  end

  def total_weight_of_animals
    total_weight = 0
    @inventory.each do |animal|
      total_weight += animal.weight_pounds
    end
    total_weight
  end

  def details
    zoo_details = {
      "total_weight" => total_weight_of_animals,
      "street_address" => @street
    }
  end

  def animals_sorted_by_weight
    sorted_weight = []
    index = 0
    @inventory.each do |animal|
      if animal.weight_pounds > @inventory[0].weight_pounds
        sorted_weight.unshift(animal)
      end
      if animal.weight_pounds < @inventory[index].weight_pounds
        sorted_weight << animal
      end
      index += 1
    end
  end
end
