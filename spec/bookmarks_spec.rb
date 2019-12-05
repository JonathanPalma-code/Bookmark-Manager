require 'bookmarks'

describe Bookmarks do
  subject(:bookmarks) { described_class.new }

  describe '#all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmarks_manager_test')
      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'makers');")
      # connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.instagram.com');")
      # connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
      bookmarks = Bookmarks.new.all
      p bookmarks
      expect(bookmarks.first['url']).to eq("http://www.makersacademy.com") 
      expect(bookmarks.first['title']).to eq("makers") 
      # expect(bookmarks.all).to include("http://www.google.com") 
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmarks.add(url: 'http://www.testbookmark.com', title: 'Test Bookmark').first
      expect(bookmark['url']).to eq 'http://www.testbookmark.com'
      expect(bookmark['title']).to eq 'Test Bookmark'
    end
  end
end