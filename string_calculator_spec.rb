require './string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns number itself when only one number is provided' do
      expect(StringCalculator.add("1")).to eq(1)
    end

  end
end
