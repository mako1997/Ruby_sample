foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)
foods.each do |food|
  if food.include?("うに")
    puts "好物です"
  else
    puts "まぁまぁ好きです"
  end
end
