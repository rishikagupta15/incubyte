require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
    calculator = StringCalculator.new
    describe "null string" do
        it "returns zero" do
            expect(calculator.add(nil)).to eq(0)
        end
    end
    describe "empty string" do
        it "returns zero" do
            expect(calculator.add("")).to eq(0)
        end
    end
    describe "string with one with one digit number" do
        it "returns the number as an int" do
            expect(calculator.add("1")).to eq(1)
        end
    end
    describe "string with one number and multiple digits" do
        it "returns the number as an int" do
            expect(calculator.add("12")).to eq(12)
        end
    end
    describe "string with two, one digit numbers and comma(,) as delemiter" do
        it "returns the sum of the numbers as an integer" do
            expect(calculator.add("1,5")).to eq(6)
        end
    end
    describe "string with two multi-digit numbers and comma(,) as delemiter" do
        it "returns the sum as an integer" do
            expect(calculator.add("12,300")).to eq(312)
        end
    end
    describe "string with multiple one digit numbers and comma(,) as delemiter" do
        it "returns the sum of the numbers as an integer" do
            expect(calculator.add("1,4,6")).to eq(11)
        end
    end
    describe "string with multiple multi-digit numbers and comma(,) as delemiter" do
        it "returns the sum as an integer" do
            expect(calculator.add("12,300,10,511")).to eq(833)
        end
    end
    describe "string with multiple one digit numbers and comma(,) and new lines(\n) as delemiters" do
        it "returns the sum of the numbers as an integer" do
            expect(calculator.add("1\n4,6")).to eq(11)
        end
    end
    describe "string with multiple numbers and semicolon(;) as the delimiter" do
        it "returns the sum of the numbers as an integer" do
            expect(calculator.add("//;\n1;2")).to eq(3)
        end
    end
    describe "string with multiple numbers and multiple astrix(***) as the delimiter" do
        it "returns the sum of the numbers as an integer" do
            expect(calculator.add("//***\n1***2")).to eq(3)
        end
    end
    describe "string with a negative number" do
        it "raises an exception with the negative number" do
            expect { calculator.add("-1") }.to raise_error("negative numbers not allowed -1")
        end
    end
    describe "string with multiple negative number" do
        it "raises an exception with the negative number" do
            expect { calculator.add("-1,3,-2") }.to raise_error("negative numbers not allowed -1,-2")
        end
    end
    describe "string with numbers greater than 1000" do
        it "ignores numbers greater than 1000 and returns the sum of the remaining numbers" do
            expect(calculator.add("1,4,1001")).to eq(5)
        end
    end
end
RSpec.describe StringCalculator do
    describe "check number of times the add function was called" do
        it "returns the number of times the add function was made" do
            calculator = StringCalculator.new
            10.times{calculator.add("1,2")}
            expect(calculator.get_called_count).to eq(10)
        end
    end
end