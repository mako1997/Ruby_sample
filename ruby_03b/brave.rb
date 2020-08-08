class Brave < Character
  def attack(monster)
    monster_damage = @offense - monster.defense
    monster.hp -= monster_damage
    monster.hp = 0 if monster.hp < 0
    puts "#{@name}が#{monster.name}に#{monster_damage}のダメージを与えた。残りの#{monster.name}のHPは#{monster.hp}だ。"
  end
end
