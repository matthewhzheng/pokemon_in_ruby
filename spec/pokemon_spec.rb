require_relative '../pokemon'

describe Squirtle do
  let(:squirtle) { described_class.new }

  describe "#initialize" do
    it "sets the initial HP" do
      expect(squirtle.hp).to eq(100)
    end
  end
end
