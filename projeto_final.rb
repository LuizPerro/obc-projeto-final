require_relative 'translator'

puts 'Qual texto deseja traduzir?'
text = gets.chomp

puts 'De qual idioma? (silga)'
lang_from = gets.chomp

puts 'Para qual idioma? (sigla)'
lang_to = gets.chomp

file_translated = Translator.translate(text, lang_from, lang_to)
puts "Tradução no arquivo: #{file_translated}"
