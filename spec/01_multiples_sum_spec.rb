require_relative '../lib/01_multiples_sum.rb'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
    expect(is_multiple_of_3_or_5?(19)).to eq(false)
    expect(is_multiple_of_3_or_5?(637)).to eq(false)
    expect(is_multiple_of_3_or_5?(884)).to eq(false)
  end
end

describe "the sum_of_3_or_5_multiples? method" do
  it "should return the sum to all multiples of 3 & 5" do
    expect(sum_of_3_or_5_multiples?(0, 10)).to eq(23)
    expect(sum_of_3_or_5_multiples?(0, 11)).to eq(33)
    expect(sum_of_3_or_5_multiples?(0, 1001)).to eq(234168)
  end
end