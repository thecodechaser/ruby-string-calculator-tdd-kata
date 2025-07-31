require './string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns number itself when only one number is provided' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'returns sum of two comma-separated numbers' do
       expect(StringCalculator.add("1,2")).to eq(3)
    end

    it 'returns sum of multiple comma-separated numbers' do
       expect(StringCalculator.add("1,2,3,4")).to eq(10)
    end

    it 'handles newlines as delimiters' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiter' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

  end
end
