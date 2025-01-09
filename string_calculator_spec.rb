require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
    describe "null string" do
        it "returns zero" do
            calculator = StringCalculator.new
            expect(calculator.add(nil)).to eq(0)
        end
    end
    describe "empty string" do
        it "returns zero" do
            calculator = StringCalculator.new
            expect(calculator.add("")).to eq(0)
        end
    end
    describe "string with one with one digit number" do
        it "returns the number as an int" do
            calculator = StringCalculator.new
            expect(calculator.add("1")).to eq(1)
        end
    end
    describe "string with one number and multiple digits" do
        it "returns the number as an int" do
            calculator = StringCalculator.new
            expect(calculator.add("12")).to eq(12)
        end
    end
    describe "string with two, one digit numbers and comma(,) as delemiter" do
        it "returns the sum of the numbers as an integer" do
            calculator = StringCalculator.new
            expect(calculator.add("1,5")).to eq(6)
        end
    end
    describe "string with two multi-digit numbers and comma(,) as delemiter" do
        it "returns the sum as an integer" do
            calculator = StringCalculator.new
            expect(calculator.add("12,300")).to eq(312)
        end
    end
    describe "string with multiple one digit numbers and comma(,) as delemiter" do
        it "returns the sum of the numbers as an integer" do
            calculator = StringCalculator.new
            expect(calculator.add("1,4,6")).to eq(11)
        end
    end
    describe "string with multiple multi-digit numbers and comma(,) as delemiter" do
        it "returns the sum as an integer" do
            calculator = StringCalculator.new
            expect(calculator.add("12,300,10,511")).to eq(833)
        end
    end
end