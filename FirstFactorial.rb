def FirstFactorial(num)
  idx = 1
  factorial = num
  while idx < num
    factorial = factorial * (num - idx)
    idx = idx + 1
  end
  return factorial

end

FirstFactorial(STDIN.gets)
