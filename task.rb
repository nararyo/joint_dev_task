# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  p names << "斎藤"
end

def q2
  array1 = %w(dog cat fish)
  array2 = %w(bird bat tiger)

  # 以下に回答を記載
  array = array1 + array2
  p array
end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  p numbers.count(3)
end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  p sports.compact!
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  puts array1.empty?
  puts array2.empty?
end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  numbers2 = numbers1.map{|n|n * 10}
  p numbers2
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  p array.map!(&:to_i)
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載
  programming_languages.map!(&:capitalize)
  upper_case_programming_languages = programming_languages.map(&:upcase)
  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
#  会員No.1 田中さん
#  会員No.2 佐藤さん
#  会員No.3 佐々木さん
#  会員No.4 高橋さん

  names.each.with_index(1) do |name, i|
    puts "会員No.#{i} #{name}さん"
  end

end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |f|
    if f.include?("うに")
      puts "#{f} 好物です"
    else
      puts "#{f} まあまあです"
    end
  end



end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  #ユーザーの趣味一覧
  #No1 サッカー
  #No2 バスケ
  #No3 野球
  #No4 フットサル
  #No5 水泳
  #No6 ハンドボール
  #No7 卓球
  #No8 ボルダリング
  sports.flatten!.uniq!
  sports.each.with_index(1)do |sport, i|
    puts "No#{i} #{sport}"
  end

end

def q12
  data = { user: { name: "satou", age: 33 } }
  puts data[:user][:name]
  # 以下に回答を記載

end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }


  # 以下に回答を記載
  #user_data[:age] = 32
  #user_data[:address] = "沖縄"
  #puts user_data

  puts user_data.merge!(update_data)
end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
#  p data.map {|key, value| key}
  p data.keys
end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  data = [data1, data2]
  data.each do |d|
     puts d.key?(:age) ? 'OK':'NG'

  end

end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  #私の名前は〜です。年齢は〜歳です。
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}です"
  end

end

class UserQ17
  # 以下に回答を記載
 #attr_accessor :name, :age, :gender, :admin

  def initialize(**user)
    @name = user[:name]
    @age = user[:age]
    @gender = user[:gender]
    @admin = user[:admin]
  end

  def info
    admin = @admin ? "有り" : "無し"
    puts <<~EOS
     "名前：#{@name}"
  　 "年齢：#{@age}"
     "性別：#{@gender}"
     "管理者権限：#{admin}"
    EOS
  end

end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男", admin: true)
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男", admin: false)

  user1.info
  puts "-------------"
  user2.info


end

class UserQ18
  # 以下に回答を記載
  #attr_accessor :name, :age

  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def introduce
    if @age > 18
      puts "こんにちは、#{@name}と申します。よろしくお願いいたします。"
    else
      puts "はいさいまいど〜, #{@name}です！！！"
    end
  end
end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  user1.introduce
  user2.introduce
end

class Item
  # 以下を修正して下さい
attr_reader :name

  def initialize(name:)
    @name = name
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載
  attr_reader :name, :age

  def initialize(name:, age:)
    @name = name
    @age = age
  end

end

class Zoo
  # 以下に回答を記載
  #attr_reader :entry_fee, :name

  def initialize(name:, entry_fee:)
    @name = name
    @entry_fee = entry_fee
  end

  def info_entry_fee(user)
  #  if user.age < 6 && user.age >= 0
  #    price = entry_fee[:infant]
  #  elsif user.age > 5 && user.age <13
  #    price = entry_fee[:children]
  #  elsif user.age > 12 && user.age <65
  #    price = entry_fee[:adult]
  #  else
  #    price = entry_fee[:senior]
  price =
  case user.age
  when 0..5
    @entry_fee[:infant]
  when 6..12
    @entry_fee[:children]
  when 13..64
    @entry_fee[:adult]
  when 65..130
    @entry_fee[:senior]
  end

      puts "#{user.name}さんの入場料金は#{price}円です。"


  end
end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
  zoo.info_entry_fee(user)
  end

end
#たまさんの入場料金は 0 円です。
#ゆたぼんさんの入場料金は 400 円です。
#あじーさんの入場料金は 800 円です。
#ぎんさんの入場料金は 500 円です。
