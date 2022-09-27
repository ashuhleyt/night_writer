require 'spec_helper'


RSpec.describe EnglishBraille do 
  before(:each) do 
    @EnglishBraille = EnglishBraille.new
  end

  it 'exists' do 
    expect(@EnglishBraille).to be_instance_of(EnglishBraille)
  end

  it 'can format braille to correct size' do 
    expect(@EnglishBraille.convert_string_to_braille("a")).to eq("0.\n..\n..\n")
    expect(@EnglishBraille.convert_string_to_braille("s")).to eq(".0\n0.\n0.\n")
    expect(@EnglishBraille.convert_string_to_braille("h")).to eq("0.\n00\n..\n")
    expect(@EnglishBraille.convert_string_to_braille("l")).to eq("0.\n0.\n0.\n")
    expect(@EnglishBraille.convert_string_to_braille("e")).to eq("0.\n.0\n..\n")
    expect(@EnglishBraille.convert_string_to_braille("y")).to eq("00\n.0\n00\n")
    expect(@EnglishBraille.convert_string_to_braille("ashley")).to eq("0..00.0.0.00\n..0.000..0.0\n..0...0...00\n")
  end
end