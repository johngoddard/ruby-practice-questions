require 'rspec'
require_relative '../lib/recursion'
# require_relative '../solutions/recursion'

r = RecursionMachine.new

describe 'fibs_sum' do

  it 'It correctly gets the answer for the 1st fibanocci number' do
    expect(r.fibs_sum(1)).to eq(1)
  end

  it 'It correctly gets the answer for the first 2 fibanocci numbers' do
    expect(r.fibs_sum(2)).to eq(2)
  end

  it 'It correctly gets the answer for the first 6 fibanocci numbers' do
    expect(r.fibs_sum(6)).to eq(20)
  end

end

describe 'subsets' do

  it "Correctly returns all subsets of an array" do
    expect(r.subsets([1, 2, 3])).to eq([[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]])
  end

end

describe 'first_even_numbers_sum' do

  it "Correctly returns the sum of the first even number" do
    expect(r.first_even_numbers_sum(1)).to eq(2)
  end

  it "Returns the sum of the first n even numbers" do
    expect(r.first_even_numbers_sum(6)).to eq(42)
  end

end

describe "exponent" do
  it "correctly handles positive powers" do
    expect(r.exponent(5,3)).to eq(125)
  end

  it "correctly handles negative powers" do
    expect(r.exponent(2, -3)).to eq(1/8.0)
  end

  it "correctly handles 0" do
    expect(r.exponent(2, 0)).to eq(1)
  end
end
