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

  it 'can format braille to correct size' do 
    expect(@alphabet.convert_string_to_braille("a")).to eq("0.\n..\n..\n")
    expect(@alphabet.convert_string_to_braille("s")).to eq(".0\n0.\n0.\n")
    expect(@alphabet.convert_string_to_braille("h")).to eq("0.\n00\n..\n")
    expect(@alphabet.convert_string_to_braille("l")).to eq("0.\n0.\n0.\n")
    expect(@alphabet.convert_string_to_braille("e")).to eq("0.\n.0\n..\n")
    expect(@alphabet.convert_string_to_braille("y")).to eq("00\n.0\n00\n")
  end
end