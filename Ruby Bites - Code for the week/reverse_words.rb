#This is NOT an excercise to reverse characters
# but to reverse words
require 'rspec'


str = "going? it is how everyone, Hello"

def reverse_string string
  string.split.reverse.join(' ')
end



describe 'Reverses string' do
  it 'reverses the words in a string' do
    expect(reverse_string(str)).to eq('Hello everyone, how is it going?')
  end
end
