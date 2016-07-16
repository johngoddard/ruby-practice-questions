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
end
