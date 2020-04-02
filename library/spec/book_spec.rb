require 'spec_helper'

describe Book do
  
  before :each do
    @book = Book.new('Title', 'Author', :category)
  end
  
  describe '#new' do
    
    it 'returns a new book object' do
      expect(@book).to be_instance_of(Book)
    end
    
  end
  
end