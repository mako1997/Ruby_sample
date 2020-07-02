price = 1000
print "人数を入力してください > "
num = gets.to_i
if num >= 5
  puts "5人以上なので10%割引となります"
  puts "合計料金 : ¥#{(num * price * 0.9).floor}"
else
  puts "合計金額 : ¥#{num * price}"
end
