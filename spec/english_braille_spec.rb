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

  

  
end