require '/Users/tenzy/Desktop/5func.rb'
puts 'Input an argument(x)'
x = gets.to_f
begin
puts "e^x/(tg(x^3-5) +x^2 = #{func(x)}"
rescue RuntimeError => e
  puts e.message
end
