class StringCalculator
    def add(numbers)
        return 0 if !numbers
        return numbers.split(",").map{|n| n.split("\n")}.flatten.map(&:to_i).sum
    end
end