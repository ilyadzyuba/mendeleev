require 'json'

file = File.read('elements.json')
data_hash = JSON.parse(file)

puts "У нас всего элементов: #{data_hash.keys.size}"
puts data_hash.keys
puts "О каком элементе хотите узнать?"
element = gets.chomp

if data_hash.has_key?(element)
  puts "Первооткрывателем этого элемента считается: #{data_hash[element]}"
else
  puts "Извините, про такой элемент мы ещё не знаем."
end

