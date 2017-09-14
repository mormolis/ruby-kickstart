# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

def reverse_map(*arg)
    arg = arg.reverse
    i=0
    while i<arg.size
        arg[i] = yield(arg[i])
        i+=1
    end
    return arg
end


# puts reverse_map(1,2,3){|i|  i *2}