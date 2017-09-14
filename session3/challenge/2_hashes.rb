# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(num)
    hash = Hash.new
    (1..num).each do |key|
        if key%2==1  
            hash[key] = []
            (1..key).each do |value|
                if value%2==0
                    hash[key] << value
                end
            end
        end
    end
    hash
end


