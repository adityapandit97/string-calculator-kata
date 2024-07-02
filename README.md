# String Calculator TDD Kata

## Description

This project implements a String Calculator following the Test-Driven Development (TDD) Kata approach. It's written in Ruby and uses RSpec for testing.

## Table of Contents

- [Project Structure](#project-structure)
- [Features](#features)
- [Requirements](#requirements)
- [Setup](#setup)
- [Running Tests](#running-tests)
- [Usage](#usage)
- [Extending the Project](#extending-the-project)
- [Contributing](#contributing)
- [License](#license)

## Project Structure

The project is organized into several files:

- `string_calculator.rb`: Contains the main `StringCalculator` class
- `delimiter_parser.rb`: Contains the `DelimiterParser` class for parsing input strings
- `negative_number_error.rb`: Defines the custom `NegativeNumberError` exception
- `string_calculator_spec.rb`: Contains string calculator RSpec tests for the project
- `delimiter_parser_spec.rb`: Contains delimiter parser calculator RSpec tests for the project

## Features

The String Calculator can:

1. Handle empty strings
2. Add numbers separated by commas
3. Handle new lines between numbers
4. Support different delimiters
5. Throw an exception for negative numbers

## Requirements

- Ruby (version 3.0.0 or higher recommended)
- RSpec gem

## Setup

1. Clone this repository:
   ```sh
   git clone https://github.com/adityapandit97/string-calculator-kata.git
   cd string-calculator-kata
   ```

2. Install RSpec if you haven't already:
   ```sh
   gem install rspec
   ```

## Running Tests

To run all tests:

```sh
rspec spec
```

## Usage

To use the String Calculator in your own Ruby code:

```ruby
require_relative 'string_calculator'

calculator = StringCalculator.new
result = calculator.add("1,2,3")
puts result  # Output: 6
```

## Extending the Project

To add new features:

1. Start by writing a new test in `string_calculator_spec.rb` or `delimiter_parser_spec.rb`
2. Run the tests to see the new test fail
3. Implement the feature in the appropriate class file
4. Run the tests again to see them pass
5. Refactor if necessary, ensuring all tests still pass
