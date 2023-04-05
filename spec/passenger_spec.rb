require 'spec_helper'

RSpec.describe Passenger do
  before(:each) do
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

  describe '#age' do
    it'returns the age' do
      expect(@charlie.age).to eq(18)
      expect(@taylor.age).to eq(12)
    end
  end

  describe 'adult?' do
    it 'checks if it is an adult' do

      expect(@charlie.adult?).to eq(true)

      expect(@taylor.adult?).to eq(false)
    end
  end

  describe 'driver?' do
    it 'checks if it is a driver' do

      expect(@charlie.driver?).to eq(false)

      @charlie.drive

      expect(@charlie.driver?).to eq(true)
    end
  end
end
