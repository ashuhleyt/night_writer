require 'spec_helper'
require './lib/library'

RSpec.describe Library do 
  before (:each) do 
    @library = Library.new
  end

  it 'exists' do 
    expect(@library).to be_instance_of(Library)
  end

  it 'populates braille equivalent' do
    expect(@library.to_braille("a")).to eq(["0.", "..", ".."])
    expect(@library.to_braille("o")).to eq(["0.", ".0", "0."])
    expect(@library.to_braille("i")).to eq([".0", "0.", ".."])
    expect(@library.to_braille("w")).to eq([".0", "00", ".0"])
    expect(@library.to_braille(" ")).to eq(["..", "..", ".."])
  end

  it 'can format braille to correct size' do 
    expect(@library.convert_string_to_braille("a")).to eq("0.\n..\n..\n")
    expect(@library.convert_string_to_braille("s")).to eq(".0\n0.\n0.\n")
    expect(@library.convert_string_to_braille("h")).to eq("0.\n00\n..\n")
    expect(@library.convert_string_to_braille("l")).to eq("0.\n0.\n0.\n")
    expect(@library.convert_string_to_braille("e")).to eq("0.\n.0\n..\n")
    expect(@library.convert_string_to_braille("y")).to eq("00\n.0\n00\n")
  end

  it 'can break the line after 240 characters' do 
    expect(@library.read_file_character_count("a")).to eq()
  end
end