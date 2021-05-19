require './lib/animal'

class Zoo
  attr_reader :name, :street, :city, :state, :zip_code

  def initialize (name, street, city, state, zip_code)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip_code = zip_code
    @inventory = []
    @animal_count = 0
  end
end
