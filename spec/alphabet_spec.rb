require 'spec_helper'
require './lib/alphabet'

RSpec.describe Alphabet do 
  before (:each) do 
    @alphabet = Alphabet.new
  end

  it 'exists' do 
    expect(@alphabet).to be_instance_of(Alphabet)
  end
end