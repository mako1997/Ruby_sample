require "pry"

class User
  def initialize(name:, age:, gender:)
    @name = name
    @age = age
    @gender = gender
  end

  def info
    puts <<~TEXT
           名前 : #{@name}
           年齢 : #{@age}
           性別 : #{@gender}
         TEXT
  end

  # コードを追加

end

user1 = User.new(name: "神里", age: 32, gender: "男")
user2 = User.new(name: "たけ", age: 38, gender: "男")

user1.info
puts "-------------"
user2.info
