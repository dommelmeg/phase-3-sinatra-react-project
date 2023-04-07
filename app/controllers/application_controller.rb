class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/books" do
    book = Book.all
    book.to_json(include: :reviews)
  end

  get "/reviews" do
    review = Review.all
    review.to_json
  end

  post "/books" do
    book = Book.create(
      title: params[:title],
      author: params[:author],
      genre: params[:genre],
      image: params[:image],
      done_reading: params[:done_reading]
    )
    book.to_json(include: :reviews)
  end

  post "/reviews" do
    review = Review.create(
      rating: params[:rating],
      comment: params[:comment],
      book_id: params[:book_id]
    )
    review.to_json
  end

  patch "/books/:id" do
    book = Book.find(params[:id])
    book.update(
      done_reading: params[:done_reading]
    )
    book.to_json(include: :reviews)
  end

  patch "/reviews/:id" do
    review = Review.find(params[:id])
    review.update(
      rating: params[:rating],
      comment: params[:comment]
    )
    review.to_json
  end

  delete "/books/:id" do
    book = Book.find(params[:id])
    book.destroy
    book.to_json(include: :reviews)
  end

  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

end
