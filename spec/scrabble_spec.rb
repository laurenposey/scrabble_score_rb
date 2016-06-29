require("rspec")
require("scrabble")


describe("String#scrabble") do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end
  it("returns increasing scores for some letters") do
    expect("j".scrabble()).to(eq(8))
  end
  it("returns a scrabble score for a word") do
    expect("cat".scrabble()).to(eq(5))
  end
  it("rejects entries with spaces") do
    expect('large pizza'.scrabble()).to(eq(""))
  end
  it("rejects entries with spaces") do
    expect("a fine number of ducks".scrabble()).to(eq(""))
  end
  it("rejects non string entries") do
    expect("35 ".scrabble()).to(eq(""))
  end
end
