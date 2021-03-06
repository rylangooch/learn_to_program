 def roman_to_integer roman

numerals_array = {"I" => 1,
                    "V" => 5,
                    "X" => 10,
                    "L" => 50,
                    "C" => 100,
                    "D" => 500,
                    "M" => 1000}

    roman.upcase!
    total = 0
    previous = 0
    index = roman.length - 1

    while index >= 0
        character = roman[index]
        index -= 1
        value = numerals_array[character]
        if !value
            puts 'This is not a valid roman numeral!'
            return
        end

        if value < previous
            value = value * -1
        else
            previous = value
        end
        total += value
    end

total
end