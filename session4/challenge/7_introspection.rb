# Given an object, return the name of its longest method
# o = Object.new
# def o.this_is_a_really_really_really_really_really_long_method_name
# end
#
# longest_method o # => :this_is_a_really_really_really_really_really_long_method_name


#arr = [:asda, :sdasd, :werwe]
def longest_method(obj)
    arr = obj.methods
    arr_max=arr[0]
    arr.each_index do |i|
        if arr[i].length > arr_max.length
            arr_max = i
        end
    end
    arr_max
end
    
    
# o=String.new
# def o.this_is_a_really_really_really_really_really_long_method_name
# end
# p longest_method(o)