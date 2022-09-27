require 'spec_helper'

RSpec.describe BrailleEnglish do 
  before(:each) do 
    @BrailleEnglish = BrailleEnglish.new
  end

  it 'exists' do 
    expect(@BrailleEnglish).to be_instance_of(BrailleEnglish)
  end

  it 'can convert a braille character to an english letter' do 
    expect(@BraileEnglish.convert_braille_to_string("0.\n..\n..\n")).to eq("a")
  end 
end