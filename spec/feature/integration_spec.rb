# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
  scenario 'author inputs' do
    visit new_book_path
    fill_in 'Author', with: 'jk rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('jk rowling')
  end
  scenario 'price inputs' do
    visit new_book_path
    fill_in 'Price', with: '10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('10')
  end
  scenario 'publish date inputs' do
    visit new_book_path
    fill_in 'Publish Date', with: '4-23-2001'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('4-23-2001')
  end
end
