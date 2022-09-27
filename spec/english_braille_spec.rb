require 'spec_helper'

RSpec.describe EnglishBraille do 
  before(:each) do 
    @EnglishBraille = EnglishBraille.new
  end

  it 'exists' do 
    expect(@EnglishBraille).to be_instance_of(EnglishBraille)
  end

  it 'converts message to braille characters' do 
    expect(@EnglishBraille.mastermind("a")).to eq("0.\n..\n..\n")
    expect(@EnglishBraille.mastermind("ashley")).to eq("0..00.0.0.00\n..0.000..0.0\n..0...0...00\n")
  end

  it 'converts to individual braille characters' do 
    expect(@EnglishBraille.convert_to_braille("a", [["0.", "..", ".."]])).to eq(["0.", "..", ".."])
    expect(@EnglishBraille.convert_to_braille("sleep", [[".0", "0.", "0.", "0.", "0.", "0.", "0.", ".0", "..", "0.", ".0", "..", "00", "0.", "0."]])).to eq([".0", "0.", "0.", "0.", "0.", "0.", "0.", ".0", "..", "0.", ".0", "..", "00", "0.", "0."])
  end

  # it 'returns final message in proper notation' do 
  #   expect(@EnglishBraille.final_output(0, 0, {0=>[["0.", "..", ".."]]}, "0.")).to eq("0.\n")
  # end

  
end