# To have 3 arrays in order [[1, 'one', '1-one'],[2, 'two', '2-two'],[3, 'three','3-three']]
arr1 = [  1,2,3 ]
arr2 = [ 'one', 'two', 'three' ]
arr3 = [ '1-one', '2-two', '3-three']

#CREDITS TO JORDAN JUDGENS FROM DEVCAMP [ AHHHH!! THE ELEGANCE OF RUBY]
def array_align (arr, *data)
  arr.zip(*data)
end

# MY APPROACH

# def array_align ( *data)
#   n = data.length
#   array = Array.new(n) { [] }
#   i = 0
#   array.each do
#     arr = array[i]
#     f = 0
#     n.times do
#       arr.push(data[f][i])
#       f += 1
#     end
#     i += 1
#   end
# end

describe 'Array arragement' do
  it ' line up numbers with it \'s spelling and and number-spelling combo' do
    expect(array_align(arr1, arr2, arr3)).to eq([
                                    [1, 'one', '1-one'],
                                    [2, 'two', '2-two'],
                                    [3, 'three', '3-three']
                                  ])
  end
end
