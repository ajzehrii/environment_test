# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter',author: 'jk rowling',price: 10,published_date: '4-23-2001')
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without a author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without a published date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end