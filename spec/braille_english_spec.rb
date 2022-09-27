require 'spec_helper'

RSpec.describe BrailleEnglish do 
  before(:each) do 
    @BrailleEnglish = BrailleEnglish.new
  end

  it 'exists' do 
    expect(@BrailleEnglish).to be_instance_of(BrailleEnglish)
  end

  it 'can convert a braille character to an english letter' do 
    expect(@BrailleEnglish.convert_braille_to_string("0.\n..\n..\n")).to eq("a")
    expect(@BrailleEnglish.convert_braille_to_string("0..00.0.0.00\n..0.000..0.0\n..0...0...00\n")).to eq("ashley")
  end 

  it 'can blah blah' do 
    expect(@BrailleEnglish.split_character("0..00.0.0.00\n..0.000..0.0\n..0...0...00\n")).to eq([["0.", "..", ".."], [".0", "0.", "0."], ["0.", "00", ".."], ["0.", "0.", "0."], ["0.", ".0", ".."], ["00", ".0", "00"]])
  end
end