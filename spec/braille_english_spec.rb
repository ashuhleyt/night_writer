require 'spec_helper'

RSpec.describe BrailleEnglish do 
  before(:each) do 
    @brailleenglish = BrailleEnglish.new
  end

  it 'exists' do 
    expect(@brailleenglish).to be_instance_of(BrailleEnglish)
  end
end