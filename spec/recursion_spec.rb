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

describe "Make better change" do
  it "Returns the smallest possible array of coins: case 1" do
    expect(r.make_better_change(24, [10,7,1])).to eq([10,7,7])
  end

  it "Returns the smallest possible array of coins: case 2" do
    expect(r.make_better_change(25, [10,7,1])).to eq([10,7,7,1])
  end

  it "Returns the smallest possible array of coins: case 3" do
    expect(r.make_better_change(25, [10,8,7,1])).to eq([10,8,7])
  end
end

describe "deep_dup" do
  robot_parts = [
  ["nuts", "bolts", "washers"],
  ["capacitors", "resistors", "inductors"]
  ]

  copy = r.deep_dup(robot_parts)

  it "makes a copy of the original array" do
    expect(copy).to eq(robot_parts)
  end

  it "deeply copies arrays" do
    copy[1] << "LEDs"
    expect(robot_parts[1]).to eq(["capacitors", "resistors", "inductors"])
  end
end

describe "string_include_key" do
  it "returns true for the same string" do
    expect(r.string_include_key?("adblfci", "abc")).to eq(true)
  end

  it "handles keys with duplicate characters: case 1" do
    expect(r.string_include_key?("adbblfci", "abbc")).to eq(true)
  end

  it "handles keys with duplicate characters: case 2" do
    expect(r.string_include_key?("adbclfci", "abbc")).to eq(false)
  end

  it "returns false if the key characters are in the wrong order" do
    expect(r.string_include_key?("dblfcia", "abc")).to eq(false)
  end

  it "returns false if the string doesn't contain the key" do
    expect(r.string_include_key?("db", "abc")).to eq(false)
  end

end

describe "prime_factorization" do
  it "handles an input of 2" do
    expect(r.prime_factorization(2)).to eq([2])
  end

  it "Test case: 12" do
    expect(r.prime_factorization(12).sort).to eq([2,2,3])
  end

  it "Test case: 600851475143" do
    expect(r.prime_factorization(600851475143).sort).to eq([71,839,1471,6857])
  end
end
