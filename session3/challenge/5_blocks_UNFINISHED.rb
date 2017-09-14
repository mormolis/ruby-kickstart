# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]


#tried to traverse arrays without blocks first, didn't make it...
#I will try another time


def right(r, sc, ec, array, final_array) #r for row, sc start column, end column
    (sc..ec).each do |num|
        final_array << array[r][num]
    end
end

def down(c, sr, er, array, final_array)
    (sr..er).each do |num|
        final_array << array[num][c]
    end
end

def left(r, sc, ec,array, final_array)
    (ec..sc).reverse_each do |num|
        final_array << array[r][num]
    end
end

def up(c, sr, er, array, final_array)
    (er..sr).reverse_each do |num|
        final_array << array[num][c]
    end
end

array = [
    [ 1,  2,  3,  4, 5],
    [16, 17, 18, 19, 6],
    [15, 24, 25, 20, 7],
    [14, 23, 22, 21, 8],
    [13, 12, 11, 10, 9],
  ]
final_array =[]
row = 0
start_collumn = 0
end_collumn = array[row].size-1

while start_collumn - end_collumn != 0
    right(row, start_collumn, end_collumn, array, final_array)
    row+=1
    collumn= end_collumn
    start_row = row
    end_row = array.size-row
    down(collumn, start_row, end_row, array, final_array)
    row = end_row
   
    collumn = collumn -1
    start_collumn = collumn
    end_collumn = 0
    left(row, start_collumn, end_collumn,array, final_array)
    collumn = end_collumn

    p row
    p final_array
    start_row = array.size-1-collumn
    end_row = row
    up(collumn, start_row, end_row, array, final_array)
    collumn = collumn +1
    
    start_collumn = collumn
    end_collumn = array[row].size-1-collumn
end

p final_array






    
