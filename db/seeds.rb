puts "🌱 Seeding books..."

50.times do
  book = Book.create(
    image: Faker::LoremFlickr.image,
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    done_reading: Faker::Boolean.boolean
  )

  rand(1..3).times do
    Review.create(
      rating: rand(1..5),
      comment: Faker::Lorem.sentence,
      book_id: book.id
    )
  end
end

puts "✅ Done seeding!"
