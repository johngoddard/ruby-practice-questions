class RecursionMachine

  # Implement a method that finds the sum of the first n
  # fibanocci numbers recursively. Assume n > 0
  def fibs_sum(n)
  end

  #returns all subsets of an array
  def subsets(array)

  end

  # return the sum of the first n even numbers recursively. Assume n > 0
  def first_even_numbers_sum(n)

  end

  # return b^n recursively. Your solution should accept negative values
  # for n
  def exponent(b, n)

  end

  # make better change problem from class
  def make_better_change(value, coins)

  end

  #deep dup question from class
  def deep_dup(arr)

  end

  # Write a recursive method that takes in a string to search and a key string.
  # Return true if the string contains all of the characters in the key
  # in the same order that they appear in the key.
  #
  # string_include_key?("cadbpc", "abc") => true
  # string_include_key("cba", "abc") => false

  def string_include_key?(string, key)
  end

  # Write a recursive function that returns the prime factorization of
  # a given number. Assume num > 1
  #
  # prime_factorization(12) => [2,2,3]

  def prime_factorization(num)

  end

  # CHALLENGE: Eight queens puzzle precursor
  #
  # Write a recursive method that generates all 8! possible unique ways to
  # place eight queens on a chess board such that no two queens are in
  # the same board row or column (the same diagonal is OK).
  #
  # Each of the 8! elements in the return array should be an array of positions:
  # E.g. [[0,0], [1,1], [2,2], [3,3], [4,4], [5,5], [6,6], [7,7]]
  #
  # My solution used 3 method parameters: current_row, taken_columns, and
  # positions so far

  def eight_queens_possibilities(current_row, taken_columns, positions)

  end

end
