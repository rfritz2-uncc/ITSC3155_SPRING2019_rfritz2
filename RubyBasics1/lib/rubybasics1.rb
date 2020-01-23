# Lab 1
# Part I
def sum arr
  total=0
  arr.each do |number|
    total +=number
  end
  return total
end

# Part II
def max_2_sum arr
  sum(arr.sort.last(2))
end

# Part III
def sum_to_n? arr, n
  arr.combination(2).any? { |a,b|a + b == n}
end