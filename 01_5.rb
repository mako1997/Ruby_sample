puts <<~TEXT
       旅行プランを選択してください
       1. 沖縄旅行 (¥10000)
       2. 北海道旅行 (¥20000)
       3. 九州旅行 (¥15000)
     TEXT
okinawa_price = 10000
hokkaido_price = 20000
kyusyu_price = 15000
print "プランを選択 > "
num = gets.tr("０-９", "0-9").to_i
if num == 1
  puts "沖縄旅行ですね、何人で行きますか？"
  print "人数を入力 > "
  num = gets.to_i
  puts "合計料金 : ¥#{num * okinawa_price}"
elsif num == 2
  puts "北海道旅行ですね、何人で行きますか？"
  print "人数を入力 > "
  num = gets.to_i
  puts "合計料金 : ¥#{num * hokkaido_price}"
elsif num == 3
  puts "九州旅行ですね、何人で行きますか？"
  print "人数を入力 > "
  num = gets.to_i
  puts "合計料金 : ¥#{num * kyusyu_price}"
else
  puts "1~3のプランのいずれか一つを選択して下さい"
end
