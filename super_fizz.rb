#clear version

# (0..1000).each { |number|
#   if number % 3 === 0 && number % 5 === 0 && number % 7 === 0
#     puts "SuperFizzBuzz"
#   elsif number % 3 === 0 && number % 7 === 0
#     puts "SuperFizz"
#   elsif number % 5 === 0 && number % 7 === 0
#     puts "SuperFizzBuzz"
#   elsif number % 3 === 0 && number % 5 === 0
#     puts "FizzBuzz"
#   elsif number % 3 === 0
#     puts "Fizz"
#   elsif number % 5 === 0
#     puts "Buzz"
#   elsif number % 7 === 0
#     puts "Super"
#   else
#     puts number.to_s
#   end
# }

#concise version

# def get_words(number)
#   word = ""
#   word += "Super" if number % 7 === 0
#   word += "Buzz" if number % 5 === 0
#   word += "Fizz" if number % 3 === 0
#   if word.empty?
#     puts number.to_s
#   else
#     puts word
#   end
# end
#
# (0..1000).each { |number|
#   get_words(number)
# }

#class clear solution

def divisible_by_3?(num)
  num % 3 == 0
end

def divisible_by_5?(num)
  num % 5 == 0
end

def divisible_by_7?(num)
  num % 7 == 0
end

# 1001.times do |num|
#   if divisible_by_3?(num) && divisible_by_5?(num) && divisible_by_7?(num)
#     puts "SuperFizzBuzz"
#   elsif divisible_by_3?(num) && divisible_by_7?(num)
#     puts "SuperFizz"
#   elsif divisible_by_5?(num) && divisible_by_7?(num)
#     puts "SuperBuzz"
#   elsif divisible_by_3?(num) && divisible_by_5?(num)
#     puts "FizzBuzz"
#   elsif divisible_by_3?(num)
#     puts "Fizz"
#   elsif divisible_by_5?(num)
#     puts "Buzz"
#   elsif divisible_by_7?(num)
#     puts "Super"
#   else
#     puts num
#   end
# end

#class refactored solution

1001.times do |num|
  output = ""

  if divisible_by_7?(num)
    output = output + "Super"
  end

  if divisible_by_3?(num)
    output = output + "Fizz"
  end

  if divisible_by_5?(num)
    output = output + "Buzz"
  end

  if output.empty?
    output = num
  end

  puts output

end
