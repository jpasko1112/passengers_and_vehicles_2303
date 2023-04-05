require 'spec_helper'

RSpec.describe Passenger do
  before(:each) do
    @passenger = Passenger.new
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  describe '#initialize' do
   it 'can itialize a new Passenger' do
    expect(@passenger).to be_a(Passenger)
   end
  end

  describe '#name' do
    it'returns the name' do
     
      @charlie.name

      expect(@charlie.name).to eq('Charlie')

      @taylor.name

      expect(@taylor.name).to eq('Taylor')
    end
  end
  
