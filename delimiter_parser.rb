class DelimiterParser
  DEFAULT_DELIMITER = /[,\n]/

  def parse(input)
    if input.start_with?("//")
      custom_delimiter = input[2]
      numbers = input.split("\n", 2).last
      [custom_delimiter, numbers]
    else
      [DEFAULT_DELIMITER, input]
    end
  end
end