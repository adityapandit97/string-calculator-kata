class StringCalculator
  def initialize(delimiter_parser = DelimiterParser.new)
    @delimiter_parser = delimiter_parser
  end

  def add(input)
    return 0 if input.empty?

    delimiter, numbers = @delimiter_parser.parse(input)
    nums = numbers.split(delimiter).map(&:to_i)
    
    check_for_negatives(nums)
    nums.sum
  end

  private

  def check_for_negatives(nums)
    negatives = nums.select { |n| n < 0 }
    if negatives.any?
      raise NegativeNumberError, "Negative numbers not allowed: #{negatives.join(', ')}"
    end
  end
end