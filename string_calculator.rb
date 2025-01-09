class StringCalculator
    def add(numbers)
        return 0 if !numbers
        delimiters = ["\n", ","]
        if numbers.start_with?("//")
            split_numbers_with_new_line = numbers.split("\n")
            delimiters = [split_numbers_with_new_line[0][2..-1]]
            numbers = [split_numbers_with_new_line[1]]
        else
            numbers = [numbers]
        end
        delimiters.each do |d|
            numbers = numbers.map{|n| n.split(d)}.flatten
        end
        integer_numbers = numbers.map(&:to_i)
        negative_numbers = integer_numbers.select{|num| num < 0 }
        raise "negative numbers not allowed "+negative_numbers.join(',') if negative_numbers.length > 0
        return integer_numbers.sum
    end
end