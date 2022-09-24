require 'spec_helper'
require './lib/alphabet'

RSpec.describe Alphabet do 
  before (:each) do 
    @alphabet = Alphabet.new
  end

  it 'exists' do 
    expect(@alphabet).to be_instance_of(Alphabet)
  end

  it 'populates braille equivalent' do
    expect(@alphabet.to_braille("a")).to eq(["0.", "..", ".."])
    expect(@alphabet.to_braille("o")).to eq(["0.", ".0", "0."])
    expect(@alphabet.to_braille("i")).to eq([".0", "0.", ".."])
    expect(@alphabet.to_braille("w")).to eq([".0", "00", ".0"])
    expect(@alphabet.to_braille(" ")).to eq(["..", "..", ".."])
  end
end