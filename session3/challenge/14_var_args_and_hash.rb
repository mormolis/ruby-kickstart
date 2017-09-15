# You have two different problems to solve, you must get which one it is from a hash
# The default value for the hash should be :count_clumps
# If no hash is provided, choose count_clumps
#
# PROBLEM: count_clumps
# Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value.
# Return the number of clumps in the given arguments.
#
# problem_14 1, 2, 2, 3, 4, 4, :problem => :count_clumps    # => 2
# problem_14 1, 1, 2, 1, 1,    :problem => :count_clumps    # => 2
# problem_14 1, 1, 1, 1, 1,    :problem => :count_clumps    # => 1
#
#
# PROBLEM: same_ends
# Return true if the group of N numbers at the start and end of the array are the same.
# For example, with [5, 6, 45, 99, 13, 5, 6], the ends are the same for n=0 and n=2, and false for n=1 and n=3.
# You may assume that n is in the range 0..nums.length inclusive.
#
# The first parameter will be n, the rest will be the input to look for ends from
# problem_14 1,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
# problem_14 2,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => true
# problem_14 3,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false



def problem_14(*arr, **hash)
    if !hash.is_a? Hash
        arr << hash
        return count_clumps(arr)
    end

    if hash[:problem] == :same_ends
        n = arr.shift
       return same_ends(n, arr) 
    else
        return count_clumps(arr)
    end
end

def same_ends(n, *arr)
    arr = arr.flatten
    return false if arr.size < n
    arr1= arr[0,n]
    arr2 = arr.last(n)
    return true if arr1 == arr2
    false
end

def count_clumps(*arr)
    arr = arr.flatten
    i=0
    j=0
    count=0
    while i<arr.size
        j=i+1
        clump = false
        
        while arr[i] == arr[j]
            clump =true
            j=j+1
        end
        if clump
            count+=1
            i = j-1
        end
        i=i+1
    end
    count
end
