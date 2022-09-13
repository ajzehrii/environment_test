# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: '10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
  scenario 'author inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: '10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('jk rowling')
  end
  scenario 'price inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: '10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('10')
  end
  scenario 'publish date inputs' do
    visit new_book_path
    fill_in 'Published_date', with: '2007-7-21'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2007-7-21')
  end
end
