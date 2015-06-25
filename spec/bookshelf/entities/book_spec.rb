require 'spec_helper'

describe Book do
  it 'can be initialised with title attribute' do
    book = Book.new(title: 'Refactoring')
    book.title.must_equal 'Refactoring'
  end

  it 'can be initialised with author attribute' do
    book = Book.new(author: 'Dutch McLovin')
    book.author.must_equal 'Dutch McLovin'
  end
end
