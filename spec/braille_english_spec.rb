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

  it 'can split characters at 3 lines' do 
    expect(@BrailleEnglish.split_character(".00.0..00000\n00..000..000\n0.000...0...")).to eq([[".0", "00", "0."], ["0.", "..", "00"], ["0.", "00", "0."], [".0", "0.", ".."], ["00", ".0", "0."], ["00", "00", ".."]])
  end

  it 'can return english letters appropriately' do 
    expect(@BrailleEnglish.braille_characters(1, [["0."], [".."], [".."]] )).to eq([["0.", "..", ".."]])
  end
end