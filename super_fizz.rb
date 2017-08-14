#clear version

(0..1000).each { |number|
  if number % 3 === 0 && number % 5 === 0 && number % 7 === 0
    puts "SuperFizzBuzz"
  elsif number % 3 === 0 && number % 7 === 0
    puts "SuperFizz"
  elsif number % 5 === 0 && number % 7 === 0
    puts "SuperFizzBuzz"
  elsif number % 3 === 0 && number % 5 === 0
    puts "FizzBuzz"
  elsif number % 3 === 0
    puts "Fizz"
  elsif number % 5 === 0
    puts "Buzz"
  elsif number % 7 === 0
    puts "Super"
  else
    puts number.to_s
  end
}

#concise version

def get_words(number)
  word = ""
  word += "Super" if number % 7 === 0
  word += "Buzz" if number % 5 === 0
  word += "Fizz" if number % 3 === 0
  if word.empty?
    puts number.to_s
  else
    puts word
  end
end

(0..1000).each { |number|
  get_words(number)
}
