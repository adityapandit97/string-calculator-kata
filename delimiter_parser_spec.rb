require 'rspec'

RSpec.describe DelimiterParser do
  let(:parser) { DelimiterParser.new }

  describe '#parse' do
    it 'returns default delimiter for regular input' do
      delimiter, numbers = parser.parse("1,2,3")
      expect(delimiter).to eq(DelimiterParser::DEFAULT_DELIMITER)
      expect(numbers).to eq("1,2,3")
    end

    it 'returns custom delimiter for input with delimiter specification' do
      delimiter, numbers = parser.parse("//;\n1;2;3")
      expect(delimiter).to eq(";")
      expect(numbers).to eq("1;2;3")
    end
  end
end