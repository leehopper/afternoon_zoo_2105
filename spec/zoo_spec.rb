require 'rspec'
require './lib/animal'
require './lib/zoo'

RSpec.describe Zoo do
  before(:each) do
    @zoo = Zoo.new('Bronx Zoo', '2300 Southern Blvd', 'Bronx', 'NY', '10460')
  end

  it 'exists' do
    expect(@zoo).to be_a(Zoo)
  end

  it 'has a name' do
    expect(@zoo.name).to eq('Bronx Zoo')
  end

  it 'has a street, city, state, and zip code' do
    expect(@zoo.street).to eq('2300 Southern Blvd')
    expect(@zoo.city).to eq('Bronx')
    expect(@zoo.state).to eq('NY')
    expect(@zoo.zip_code).to eq('10460')
  end

  it 'has an address' do
    expect(@zoo.address).to eq('2300 Southern Blvd Bronx, NY 10460')
  end

  it 'has no inventory or animals to start' do
    expect(@zoo.inventory).to eq([])
    expect(@zoo.animal_count).to eq(0)
  end

  it 'receives animals and creates inventory and animal count' do
    animal_1 = Animal.new("Sea Otter", 10, 25)
    animal_2 = Animal.new("Red Panda", 5, 70)
    @zoo.add_animal(animal_1)
    @zoo.add_animal(animal_2)

    expect(@zoo.inventory).to eq([animal_1, animal_2])
    expect(@zoo.animal_count).to eq(2)
  end
end
