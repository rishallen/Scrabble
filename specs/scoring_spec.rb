require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/scoring'


describe Scoring do
  it "is an object we have access to" do
  Scoring.wont_be_nil
  end

  describe "LetterValue#convert" do
    TEST_CASES = {
    "A" => 1,
    "D" => 2,
    "M" => 3,
    "F" => 4,
    "K" => 5,
    "J" => 8,
    "Q" => 10
    }
    TEST_CASES.each do |letter, value|
      it "should return #{letter} for #{value}" do
        Scoring.letter_value(letter).must_equal(value)
      end
    end
  end
end
