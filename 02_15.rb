data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
data2 = { name: "yamada", hobby: "baseball", role: "normal" }

# if data1.key?(:age)
#   puts "OK"
# else
#   puts "NG"
# end

puts data1.key?(:age) ? "OK" : "NG"
puts data2.key?(:age) ? "OK" : "NG"
