puts "🌱 Seeding books..."

hp1 = Book.create(
  image: "https://upload.wikimedia.org/wikipedia/en/5/5c/Harry_Potter_and_the_Chamber_of_Secrets.jpg",
  title: "Harry Potter and the Chamber of Secrets",
  author: "J.K. Rowling",
  genre: "fantasy",
  done_reading: true
)

hpdh = Book.create(
  image: "https://upload.wikimedia.org/wikipedia/en/a/a9/Harry_Potter_and_the_Deathly_Hallows.jpg",
  title: "Harry Potter and the Deathly Hallows",
  author: "J.K. Rowling",
  genre: "fantasy",
  done_reading: true
)

qtha = Book.create(
  image: "https://upload.wikimedia.org/wikipedia/en/8/8b/Quidditchthroughtheages.jpg",
  title: "Quidditch Through the Ages",
  author: "J.K. Rowling",
  genre: "fantasy",
  done_reading: false
)

tbb = Book.create(
  image: "https://upload.wikimedia.org/wikipedia/en/8/82/Tales_of_Beedle_the_Bard.jpg",
  title: "The Tales of Beedle the Bard",
  author: "J.K. Rowling",
  genre: "fantasy",
  done_reading: false
)

hpps = Book.create(
  image: "https://upload.wikimedia.org/wikipedia/en/6/6b/Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg",
  title: "Harry Potter and the Philosopher's Stone",
  author: "J.K. Rowling",
  genre: "fantasy",
  done_reading: true
)

fb = Book.create(
  image: "https://upload.wikimedia.org/wikipedia/en/8/8d/Fantastic_beasts.JPG",
  title: "Fantastic Beasts and Where to Find Them",
  author: "Newt Scamander",
  genre: "guide book",
  done_reading: false
)

aiug = Book.create(
  image: "https://upload.wikimedia.org/wikipedia/en/3/31/Rowling_-_Hogwarts_-_An_Incomplete_and_Unreliable_Guide_coverart.png",
  title: "Hogwarts, An Incomplete and Unreliable Guide",
  author: "J.K. Rowling",
  genre: "guide book",
  done_reading: true
)

shortStories = Book.create(
  image: "https://upload.wikimedia.org/wikipedia/en/b/b1/Rowling_-_Short_Stories_from_Hogwarts_of_Power%2C_Political_and_Pesky_Poltergeists_coverart.png",
  title: "Short Stories from Hogwarts of Power, Political and Pesky Poltergeists",
  author: "J.K. Rowling",
  genre: "short stories",
  done_reading: true
)



Review.create(
  rating: rand(1..5),
  comment: "Very fabulous, I'm telling everyone I know about this book!",
  book_id: aiug.id
)

Review.create(
  rating: rand(1..5),
  comment: "Average...",
  book_id: shortStories.id
)

Review.create(
  rating: nil,
  comment: "Really looking forward to reading this book.",
  book_id: fb.id
)

Review.create(
  rating: rand(1..5),
  comment: "I can't believe Ron and Harry managed to fly that car!",
  book_id: hp1.id
)

Review.create(
  rating: rand(1..5),
  comment: "Great addition to the Harry Potter saga!",
  book_id: hpdh.id
)

25.times do
  book = Book.create(
    image: Faker::LoremFlickr.image(size: "150x200", search_terms: ['books']),
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
