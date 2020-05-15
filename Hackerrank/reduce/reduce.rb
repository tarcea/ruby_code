def combinations(n, k)
  # combination n taken by k = n!/(k! * (n-k)!)
  n_fact = (1..n).inject { |x, y| x * y }
  k_fact = (1..k).inject { |x, y| x * y }
  nk_fact = (1..(n - k)).inject { |x, y| x * y }
  # (1..n).map {|x| x**2 + 1 }.reduce(0, :+) if n >= 0
  n_fact / (k_fact * nk_fact)
end

puts combinations(52, 5)
