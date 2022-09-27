require 'spec_helper'

RSpec.describe EnglishBraille do 
  before(:each) do 
    @EnglishBraille = EnglishBraille.new
  end

  it 'exists' do 
    expect(@EnglishBraille).to be_instance_of(EnglishBraille)
  end

  it 'can format braille to correct size' do 
    expect(@EnglishBraille.convert_string_to_braille("a")).to eq([["0.", "..", ".."]])
    expect(@EnglishBraille.convert_string_to_braille("s")).to eq([[".0", "0.", "0."]])
    expect(@EnglishBraille.convert_string_to_braille("h")).to eq([["0.", "00", ".."]])
    expect(@EnglishBraille.convert_string_to_braille("l")).to eq([["0.", "0.", "0."]])
    expect(@EnglishBraille.convert_string_to_braille("e")).to eq([["0.", ".0", ".."]])
    expect(@EnglishBraille.convert_string_to_braille("y")).to eq([["00", ".0", "00"]])
    expect(@EnglishBraille.convert_string_to_braille("ashley")).to eq([["0.", "..", ".."], [".0", "0.", "0."], ["0.", "00", ".."], ["0.", "0.", "0."], ["0.", ".0", ".."], ["00", ".0", "00"]])
  end
  
  it 'converts message to braille characters' do 
    expect(@EnglishBraille.convert_to_braille("a")).to eq([["0.", "..", ".."]])
  end
  
end