# Strings and Regular Expressions

# Part I
def hello(name)
  "Hello, "+name
end

# Part II
def starts_with_consonant? s
  (s[0]=~/[^aeiouAEIOU\#]/)
end

# Part III
def binary_multiple_of_4? s
  if (s.to_s =~ /^[0-2]+$/ && s.to_i(4) % 4 == 0)
    return true
  end
  false
end
