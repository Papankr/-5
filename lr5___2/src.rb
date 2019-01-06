require '/main.rb'

puts 'Enter str: '
str = gets

puts 'Enter crypt: '
crypt = gets.to_i

puts part2(str, crypt)
