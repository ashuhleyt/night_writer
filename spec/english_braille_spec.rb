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
    expect(@EnglishBraille.mastermind("t")).to eq(".0\n00\n0.\n")
    expect(@EnglishBraille.mastermind("u")).to eq("0.\n..\n00\n")
    expect(@EnglishBraille.mastermind("r")).to eq("0.\n00\n0.\n")
    expect(@EnglishBraille.mastermind("i")).to eq(".0\n0.\n..\n")
    expect(@EnglishBraille.mastermind("n")).to eq("00\n.0\n0.\n")
    expect(@EnglishBraille.mastermind("g")).to eq("00\n00\n..\n")
    expect(@EnglishBraille.mastermind("turing")).to eq(".00.0..00000\n00..000..000\n0.000...0...\n")
  end

  it 'converts to individual braille characters' do 
    expect(@EnglishBraille.convert_to_braille("a", [["0.", "..", ".."]])).to eq(["0.", "..", ".."])
    expect(@EnglishBraille.convert_to_braille("s", [[".0", "0.", "0."]])).to eq([".0", "0.", "0."])
    expect(@EnglishBraille.convert_to_braille("h", [["0.", "00", ".."]])).to eq(["0.", "00", ".."])
    expect(@EnglishBraille.convert_to_braille("l", [["0.", "0.", "0."]])).to eq(["0.", "0.", "0."])
    expect(@EnglishBraille.convert_to_braille("e", [["0.", ".0", ".."]])).to eq(["0.", ".0", ".."])
    expect(@EnglishBraille.convert_to_braille("y", [["00", ".0", "00"]])).to eq(["00", ".0", "00"])
    expect(@EnglishBraille.convert_to_braille("sleep", [[".0", "0.", "0.", "0.", "0.", "0.", "0.", ".0", "..", "0.", ".0", "..", "00", "0.", "0."]])).to eq([".0", "0.", "0.", "0.", "0.", "0.", "0.", ".0", "..", "0.", ".0", "..", "00", "0.", "0."])
  end

  it 'creats a loop to cause a line break' do 
    expect(@EnglishBraille.line_break({0=>[["0.", "..", ".."]]}, 0, [["0.", "..", ".."]])).to eq(nil)
  end

  it 'returns final message in proper notation' do 
    expect(@EnglishBraille.final_output(0, 0, {0=>[["0.", "..", ".."]],}, "0.")).to eq(nil)
  end
end