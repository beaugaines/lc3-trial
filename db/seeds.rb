User.create(email: 'test@user.com', password: 'password')

10.times do
  Text.create(
    name: Faker::Book.title,
    content: Faker::Lorem.paragraphs(10).join
  )
end
