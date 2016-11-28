n = 2
while n <= 100
  user = User.find(n)
  user.name = "ダミーユーザー#{n}"
  user.save
  n = n + 1
end
