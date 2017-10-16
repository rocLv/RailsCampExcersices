# Write a method that takes a string as argument. The method should
# return the all-caps version of the string, only if the string is
# longer than 10 characters. Example: change "hello world" to "HELLO WORLD".
# (Hint: Ruby's String class has a few methods that would be helpful.
# Check the [Ruby Docs](http://ruby-doc.org/core-2.1.0/String.html)!)

def upcase(string)
  string_length = string.split(/\s+/).length
  string.upcase!  if string_length <= 10
end

puts upcase('hello world')
puts upcase('world hello world world hello hello hello hello hello hello')
puts upcase('hello world world world hello hello hello hello hello hello hello')

# Write a program that takes a number from the user between 0 and 100
# and reports back whether the number is between 0 and 50, 51 and 100,
# or above 100.

def random(n)
  puts "#{n} is between 0 and 50" if n > 0 && n < 50
  puts "#{n} is between 51 and 100" if n > 51 && n < 100
  puts "#{n} is above 100" if n > 100
end

n = rand(150)
random(n)

# Rewrite your program from exercise 3 using a case statement.
# Wrap the statement from exercise 3 in a method and wrap this
# new case statement in a method. Make sure they both still work.

def random_use_case
  n = rand(110)
  case n
  when 1..50
    puts "#{n} is between 0 and 50"
  when 50..100
    puts "#{n} is between 51 and 100"
  else
    puts "#{n} is above 100"
  end
end

random_use_case

# Write a while loop that takes input from the user, performs an action,
# and only stops when the user types "STOP". Each loop can get info from
# the user.

def loop_u
  puts 'please put your name:'
  x = gets.chomp
  y = 'STOP'
  while x != y
    puts "Hello #{x}"
    x = gets.chomp
  end
end
loop_u

# Use the each_with_index method to iterate through an array of
# your creation that prints each index and value of the array.

def array_print(a = [])
  a.each_with_index { |value, index| p "#{index}, #{value}" }
end

array_print(%w[jason bill john])

# Write a method that counts down to zero using recursion.

def recursion(n)
  return 0 if n == 1
  recursion(n - 1) + 3
end

p recursion 29

# Below we have given you an array and a number. Write a program
# that checks to see if the number appears in the array.

def check_include?(arr, number)
  puts "#{arr} include #{number}" if arr.include?(number)
end

check_include?([1, 3, 5, 7, 9, 11], 3)


# excersice 1

# arr = ["b", "a"] =>["b", "a"]
# arr = arr.product(Array(1..3)) =>[["b", 1], ["b", 2], ["b", 3], ["a", 1],
# ["a", 2], ["a", 3]]
# arr.first.delete(arr.first.last) =>1

# excersice 2
# arr = ["b", "a"] =>["b", "a"]
# arr = arr.product([Array(1..3)]) =>[["b", [1, 2, 3]], ["a", [1, 2, 3]]]
# arr.first.delete(arr.first.last) =>[1, 2, 3]


# How do you print the word "example" from the following array?

# arr = [["test", "hello", "world"],["example", "mem"]]
# puts arr[1].first


# arr = [15, 7, 18, 5, 12, 8, 5, 1]

# arr.index(5) => 3
# arr.index[5] => NoMethodError
# arr[6] => 5


# What is the vaalue of a, b, and c in the following program?

# string = "Welcome to America!"
# a = string[6] => "e"
# b = string[11] => "A"
# c = string[19] => nil

# You run the following code...
# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody`

# and get the following error message:

# TypeError: no implicit conversion of String into Integer
# from (irb):2:in `[]='
# from (irb):2
# from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
# What is the problem and how can it be fixed?

names = %w[bob joe susan margaret]
names[3] = 'jody'

# Write a program that iterates over an array and builds a new array
# that is the result of incrementing each value in the original array
# by a value of 2. You should have two arrays at the end of this program,
# The original array and the new array you've created. Print both arrays
# to the screen using the p method instead of puts.

def arr_new(arr)
  arr_n = []
  arr.each { |a| arr_n << a + 2 }
  p arr
  p arr_n
end

arr_new([3, 5, 1, 7, 2])
