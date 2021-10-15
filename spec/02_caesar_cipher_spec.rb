require_relative '../lib/02_caesar_cipher.rb'

describe "the caesar_cipher? method" do
  it "should move each strings X positions forward into its own ASCII table" do
    expect(caesar_cipher?("No modif", 0)).to eq("No modif")
    expect(caesar_cipher?("noMoDifs#@!", 3)).to eq("qrPrGliv#@!")
    expect(caesar_cipher?("NOMODIF", 7)).to eq("UVTVKPM")
  end
end