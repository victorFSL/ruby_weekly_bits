# GOAL : Pull out the integers, we only want the % amount at the end,
# not the other integers.

require 'rspec'

string_array = [
  'Web IconHTML & CSS100%',
  'Command LineLearn the Command Line 100%',
  'Ruby IconRuby 50%',
  'Rails Icon Learn Ruby On Rails100%',
  'Git IconLearn Git100%',
  'SassLearn Saas20%',
  'JQuery IconJQuery1%',
  'Angular JSLearn AngularJS 1.X100%',
  'Javascript IconLearn Javascript55%'
]

def string_parser(string_array)
  integer_array = []
  string_array.each do |string|
    percentage_integer = string.scan(/\d+/).last.to_i
    integer_array << percentage_integer
  end
  integer_array
end

describe 'String Parser' do
  it 'can take a String and output the correct values' do
    expect(string_parser(string_array)).to eq([100,100,50,100,100,20,1,100,55])
  end
end
