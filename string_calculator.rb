class StringCalculator
    def add(numbers)
        return 0 if !numbers
        return numbers.split(",").map(&:to_i).sum
    end
end