require 'spec_helper'

describe 'Library Object' do
  before :all do
    lib_arr = [
      Book.new('HG ahchahc', 'GFhajc', :development),
      Book.new('JGLhsaa ahac', 'KJHhlas', :design),
      Book.new('AKJsjkjs dsc', 'Ajsda d', :usability),
      Book.new('HGAD ahchahc', 'GFhadaadajc', :development),
      Book.new('JGLDDD DFhsaa ahac', 'KJHAFAhlas', :design)
      ]
      
    File.open('books.yml', 'w') do |f|
      f.write YAML::dump lib_arr
    end
  end
  
  before :each do
    @lib = Library.new 'books.yml'
  end
  
  describe '#new' do
    context 'with no parameters' do
      it 'has no books' do
        lib = Library.new
        lib.should have(0).books
      end
    end
    
    context 'with a yaml file name parameter' do
      it 'has five books' do
        @lib.should have(5).books
      end
    end
  end
  
  it 'returns all the books in a given category' do
    expect(@lib.get_books_in_category(:development).length).to eq(2)
  end
  
  it 'accepts new books' do
    @lib.add_book(Book.new('HG sajhlsahcl aa', 'HGsagaksaa', :design))
    expect(@lib.get_book('HG sajhlsahcl aa')).to be_instance_of Book
  end
  
  it 'saves the library' do
    books = @lib.books.map {|book| book.title}
    @lib.save 'our_new_library.yml'
    lib2 = Library.new 'our_new_library.yml'
    books2 = lib2.books.map {|book| book.title}
    expect(books).to eq(books2)
  end  
  
end