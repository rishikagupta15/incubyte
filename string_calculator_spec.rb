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
end