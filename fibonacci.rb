def fibs(n)
  return n == 1 ? 0 : 1 if n < 3

  fib_array = [0, 1, 1]
  (3..n-1).each { |round| fib_array[round] = fib_array[round - 1] + fib_array[round - 2] }
  fib_array[n-1]
end

def fibs_rec(n)
  return n == 1 ? 0 : 1 if n < 3
  fibs_rec(n-1)+fibs_rec(n-2)
end 

(1..15).each { |n| puts fibs(n)}
(1..15).each { |n| puts fibs_rec(n)}


