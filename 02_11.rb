sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
sports.flatten!.uniq!
puts "ユーザーの趣味一覧"
sports.each.with_index(1) do |name, i|
  puts "No#{i} #{name}"
end
