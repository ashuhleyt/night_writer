require 'spec_helper'
require './lib/alphabet'

RSpec.describe Alphabet do 
  before (:each) do 
    @alphabet = Alphabet.new
  end

  it 'exists' do 
    expect(@alphabet).to be_instance_of(Alphabet)
  end

  it 'can populate the braille string' do 
    expect(@alphabet.write("a")).to eq(["0.", "..", ".."])
    expect(@alphabet.write("o")).to eq(["0.", ".0", "0."])
    expect(@alphabet.write("i")).to eq([".0", "0.", ".."])
    expect(@alphabet.write("w")).to eq([".0", "00", ".0"])
    expect(@alphabet.write(" ")).to eq(["..", "..", ".."])
  end
end