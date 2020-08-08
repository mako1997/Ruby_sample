require "pry"

require_relative "character.rb"
require_relative "brave.rb"
require_relative "monster.rb"

brave = Brave.new(name: "勇者ジェリー", hp: 503, offense: 200, defense: 65)
monster = Monster.new(name: "モンスタートム", hp: 503, offense: 100, defense: 180)

loop do
  brave.attack(monster)
  if monster.hp <= 0
    puts "#{brave.name}が#{monster.name}に勝利しました！"
    break
  end
  monster.attack(brave)
  if brave.hp <= 0
    puts "#{monster.name}が#{brave.name}に勝利しました！"
    break
  end
end
