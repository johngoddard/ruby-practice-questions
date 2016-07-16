class RecursionMachine
  def fibs_sum(n)
    return 0 if n == 0
    return 1 if n == 1

    fibs_sum(n-1) + fibs_sum(n-2) + 1
  end

  def subsets(arr)
    return [[]] if arr.empty?

    subs = subsets(arr[0..-2])
    subs.concat(subs.map{|el| el += [arr.last]})
  end

  def first_even_numbers_sum(n)
    return 2 if n == 1

    2 * n + first_even_numbers_sum(n-1)
  end

  def make_better_change(value, coins)
    coins_to_check = coins.select{|coin| coin <= value}
    return nil if coins_to_check.empty?

    solutions = []

    coins_to_check.sort.reverse.each do |coin|
      remainder = value - coin

      if remainder > 0
        remainder_solution = make_better_change(remainder, coins_to_check)
        solutions << [coin] + remainder_solution unless remainder_solution.nil?
      else
        solutions << [coin]
      end
    end

    solutions.sort_by!{|arr| arr.size}.first
  end

end
