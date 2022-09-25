require 'spec_helper'
require './lib/english_braille'
require './lib/alphabet'

RSpec.describe EnglishBraille do 
  before(:each) do 
    @EnglishBraille = EnglishBraille.new
  end

  it 'exists' do 
    expect(@EnglishBraille).to be_instance_of(EnglishBraille)
  end

  it 'can convert english to braille' do 
    expect(@EnglishBraille.alphabet).to eq()
  end
end