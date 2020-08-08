class Monster < Character
  def attack(brave)
    brave_damage = @offense - brave.defense
    brave.hp -= brave_damage
    brave.hp = 0 if brave.hp < 0
    puts "#{@name}が#{brave.name}に#{brave_damage}のダメージを与えた。残りの#{brave.name}のHPは#{brave.hp}だ。"
  end
end
