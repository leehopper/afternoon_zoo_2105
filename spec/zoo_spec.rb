require 'rspec'
require './lib/animal'
require './lib/zoo'

RSpec.describe Zoo do
  before(:each) do
    @zoo = Zoo.new('Bronx Zoo', '2300 Southern Blvd', 'Bronx', 'NY', '10460')
    @animal_1 = Animal.new("Sea Otter", 10, 25)
    @animal_2 = Animal.new("Red Panda", 5, 70)
    @animal_3 = Animal.new("Capybara", 100, 150)
    @animal_4 = Animal.new("Dolphin", 150, 200)
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
    @zoo.add_animal(@animal_1)
    @zoo.add_animal(@animal_2)

    expect(@zoo.inventory).to eq([@animal_1, @animal_2])
    expect(@zoo.animal_count).to eq(2)
  end

  it 'outputs animals older than an argument' do
    @zoo.add_animal(@animal_1)
    @zoo.add_animal(@animal_2)
    @zoo.add_animal(@animal_3)
    @zoo.add_animal(@animal_4)

    expect(@zoo.animals_older_than(250)).to eq([])
    expect(@zoo.animals_older_than(100)).to eq([@animal_3, @animal_4])
    expect(@zoo.animals_older_than(10)).to eq([@animal_1, @animal_2, @animal_3, @animal_4])
  end

  it 'outputs total weight of animals' do
    @zoo.add_animal(@animal_1)
    @zoo.add_animal(@animal_2)
    @zoo.add_animal(@animal_3)
    @zoo.add_animal(@animal_4)

    expect(@zoo.total_weight_of_animals).to eq(265)
  end

  it 'outputs zoo details' do
    @zoo.add_animal(@animal_1)
    @zoo.add_animal(@animal_2)
    @zoo.add_animal(@animal_3)
    @zoo.add_animal(@animal_4)

    expect(@zoo.details).to eq({"total_weight" => 265, "street_address" => "2300 Southern Blvd"})
  end

  xit 'sorts animals by weight' do
    @zoo.add_animal(@animal_1)
    @zoo.add_animal(@animal_2)
    @zoo.add_animal(@animal_3)
    @zoo.add_animal(@animal_4)

    expect(@zoo.animals_sorted_by_weight).to eq([@animal_4, @animal_3, @animal_1, @animal_2])
  end
end
