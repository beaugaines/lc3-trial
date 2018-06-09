10.times do
  Text.create(
    name: Faker::Book.title,
    content: Faker::Lorem.paragraphs(10).join
  )
end
