require "pry"

class User
  attr_reader :age, :name

  def initialize(name:, age:)
    @name = name
    @age = age
  end

  # コードを追加

end

class Zoo
  def initialize(name:, entry_fee:)
    @name = name
    @entry_fee = entry_fee
  end

  def info_entry_fee(user)
    case user.age
    when 0..5
      puts "#{user.name}の入場料金は#{@entry_fee[:infant]}円です。"
    when 6..12
      puts "#{user.name}の入場料金は#{@entry_fee[:children]}円です。"
    when 13..64
      puts "#{user.name}の入場料金は#{@entry_fee[:adult]}円です。"
    when 65..120
      puts "#{user.name}の入場料金は#{@entry_fee[:senior]}円です。"
    end
  end

  # コードを追加

end

zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

users = [
  User.new(name: "たま", age: 3),
  User.new(name: "ゆたぼん", age: 10),
  User.new(name: "あじー", age: 32),
  User.new(name: "ぎん", age: 108),
]

users.each do |user|
  zoo.info_entry_fee(user)
end
