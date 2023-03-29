puts "🌱 Seeding books..."

Book.delete_all

Book.create(
  image: "https://upload.wikimedia.org/wikipedia/en/5/5c/Harry_Potter_and_the_Chamber_of_Secrets.jpg", 
  title: "Harry Potter and the Chamber of Secrets", 
  author: "J.K. Rowling",
  genre: "Fantasy",
  done_reading: false 
)

puts "✅ Done seeding!"
