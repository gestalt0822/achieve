99.times do |n|
  email = Faker::Internet.email
  password = "password"
  User.create!(email:email,
               password: password,
               password_confirmation: password,
               )
end

n = 2
while n <= 100
  Blog.create(
    title: "Dive into Coooooode #{n}",
    user_id: n,
    content: "#{n}人目のリレー投稿"
    )
    n = n + 1
end

n = 2
while n <= 100
  user = User.find(n)
  user.name = "ダミーユーザー#{n}"
  user.save
  n = n + 1
end