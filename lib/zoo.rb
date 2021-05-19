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
end
