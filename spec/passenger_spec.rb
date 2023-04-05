require 'spec_helper'

RSpec.describe Passenger do
  before(:each) do
    # @passenger = Passenger.new({})
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  describe '#initialize' do
   it 'can itialize a new Passenger' do
    expect(@charlie).to be_an_instance_of(Passenger)
   end
  end

  describe '#name' do
    it'returns the name' do

      expect(@charlie.name).to eq("Charlie")

      expect(@taylor.name).to eq('Taylor')
    end
  end
end
