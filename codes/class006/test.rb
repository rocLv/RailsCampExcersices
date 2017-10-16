# 1
puts (32 * 4) >= 129  # false
puts false != !true   # false
puts true == 4        # false
puts false == (847 == '874') # true
puts (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # true

# 2
def capitalize(str)
  str.length > 10 ? str.upcase : nil
end
  
puts capitalize 'hello world'

# 3
def check_num_range(num)
  if num > 0 && num <= 50
    'the number is between 0 and 50'
  elsif num >= 51 && num <= 100
    'the number is between 51 and 100'
  elsif num > 100
    'the number is above 100'
  else
    'please input a number of between 0 and 100'
  end
end

print 'please input a number of between 0 and 100: '
num = gets.chomp.to_i
puts check_num_range num

# 4
FALSE
Did you get it right?
Alright now!

# 5
def check_num_range(num)
  case num
  when 0..50
    'the number is between 0 and 50'
  when 51..100
    'the number is between 51 and 100'
  else
    'the number is above 100'
  end
end
print 'please input a number of between 0 and 100: '
num = gets.chomp.to_i
puts check_num_range num

# 6
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)

# 7
2 3 4 5 6

# 8
loop do
  print 'please input: '
  user_input = gets.chomp
  break if user_input == 'STOP'
end

# 9
def arr_iterate(arr)
  arr.each_with_index do |item, index|
    puts "arr第#{index + 1}个数: #{item}"
  end
end
  
arr_iterate([1, 2, 3])

# 10
def counts_down(num)
  if num < 0
    0
  else
    num + counts_down(num - 1)
  end
end
  
puts counts_down(10)

# 11 Array
def check_num_exist(num, arr)
  arr.index(num) ? "the #{num} appears in the array"
                 : "the #{num} not appears in the array"
end
  
puts check_num_exist(1, [1, 2, 5])

# 12
# excersice 1
["b", "a"]
[["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
1

# excersice 2
["b", "a"]
[["b", [1, 2, 3]], ["a", [1, 2, 3]]]
[1, 2, 3]

# 13
arr = [%w[test hello world], %w[example mem]]
puts arr.last.first

# 14
3
nil
5

# 15
e
A
nil

# 16
names = %w[bob joe susan margaret]
names[3] = 'jody'
p names

# 17
arr = [1, 2, 3, 4]
p arr
p arr.map { |value| value * 2 }
