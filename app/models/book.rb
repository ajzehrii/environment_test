class Book < ApplicationRecord
    has many :users, through: :user_books
    validates :user_books

    validates :title, :author, :price, :published_date , presence: true
end
