# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    a=""
    (0...self.length).step(2).each{|i| a<<self[i]} 
    return a
  end
end
