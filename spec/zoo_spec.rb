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

  xit 'has no inventory or animals to start' do
    expect(@zoo.inventory).to eq([])
    expect(@zoo.animal_count).to eq(0)
  end
end
