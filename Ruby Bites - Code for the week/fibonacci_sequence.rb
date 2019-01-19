# Recreate the Fibonacci sequence
require 'rspec'

# CREDITS TO JORDAN JUDGENS FROM DEVCAMP [ AHHHH!! THE ELEGANCE OF RUBY]

def fibonacci num
  (1..(num-2)).inject([0,1]) { |fib| fib << fib.last(2).inject(:+) }
end




#MY TAKE ON IT

# def fibonacci num
#   if num == (0 || nil)
#     arr = nil
#   elsif num == 1
#     arr =  [0]
#   elsif num == 2
#     arr =  [0,1]
#   else
#     arr = [0,1]
#     n = num - 2
#     n.times do |f|
#       arr << (arr[f] + arr[f+1])
#     end
#   end
#   arr
# end

describe 'Fibonacci Sequence' do
  it 'Fibonacci sequence generator' do
    expect(fibonacci(6)).to eq([0,1,1,2,3,5])
    expect(fibonacci(5)).to eq([0,1,1,2,3])
  end
end
