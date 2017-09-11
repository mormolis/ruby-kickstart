# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.


class BeerSong
    def initialize(num=0)
        if num < 0
            @bottle_num = 0
        elsif num > 99
            @bottle_num = 99
        else
            @bottle_num = num
        end
    end
    def print_song
        if @bottle_num > 1
            (2..@bottle_num).reverse_each{|i|
            puts "#{num_to_eng(i)} bottles of beer on the wall,"
            puts "#{num_to_eng(i)} bottles of beer,"
            puts "Take one down, pass it around,"
            if i > 2
                puts "#{num_to_eng(i-1)} bottles of beer on the wall."
            else
                puts "#{num_to_eng(i-1)} bottle of beer on the wall."
            end

            }
        end
        if @bottle_num>0
            puts "One bottle of beer on the wall,"
            puts "One bottle of beer,"
            puts "Take one down, pass it around,"
            puts "Zero bottles of beer on the wall."
        end
    end

    private
    def num_to_eng(num)
        eng=""
        case num%10
        when 9
            unit="nine"
        when 8
            unit="eight"
        when 7
            unit="seven"
        when 6
            unit="six"
        when 5
            unit="five"
        when 4
            unit = "four"
        when 3
            unit = "three"
        when 2
            unit = "two"
        when 1
            unit = "one"
        when 0
            unit ="zero"
        end
        
        unit_in = false

        if num/90>0
            eng << "Ninety"
            
        elsif num/80 > 0
            eng << "Eighty"
            
        elsif num/70 > 0
            eng << "Seventy"
            
        elsif num/60>0
            eng << "Sixty"
            
        elsif num/50>0
            eng << "Fifty"
            
        elsif num/40>0
            eng << "Forty"
            
        elsif num/30>0
            eng << "Thirty"
            
        elsif num/20>0
            eng << "Twenty"
            
        elsif num/10>0
            unit_in = true
            if unit =="zero"
                eng << "Ten"
            elsif unit=="one"
                eng << "Eleven"
            elsif unit == "two"
                eng <<"Twelve" 
            elsif unit == "three"
                eng <<"Thirteen"
            elsif unit == "four"
                eng << "Fourteen"
            elsif unit == "five"
                eng << "Fifteen"
            elsif unit == "six"
                eng << "Sixteen"
            elsif unit == "seven"
                eng <<"Seventeen"
            elsif unit == "eight"
                eng <<"Eighteen"
            else
                eng << "Nineteen"
            end
        else
            unit_in = true
            eng << unit.capitalize

            
        end
        
        if !unit_in && unit!="zero"
            eng << "-"
            eng << unit
        end
        return eng

    end
end

