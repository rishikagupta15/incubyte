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
end