require 'spec_helper'

describe Book do
  
  before :each do
    @book = Book.new 'Title', 'Author', :category 
  end
  
  describe '#new' do
    it 'returns a new book object' do
       expect(@book).to be_instance_of Book 
    end
    
    it 'throws an ArgumentError when given less than 3 parameters' do
      expect {Book.new 'Title', 'Author'}.to raise_error(ArgumentError)
    end
  end
  
  describe '#title' do 
    it 'returns the correct title' do
      expect(@book.title).to eq('Title')
    end
  end
  
end