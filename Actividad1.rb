str = "hola mundo"
puts str.upcase
# Output: HOLA MUNDO

str = "HOLA MUNDO"
puts str.downcase
# Output: hola mundo

str = "hola mundo, mundo"
new_str = str.gsub("mundo", "universo")
puts new_str
# Output: hola universo, universo