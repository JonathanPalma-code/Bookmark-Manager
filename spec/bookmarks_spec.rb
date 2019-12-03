require 'bookmarks'

describe Bookmarks do
  subject(:bookmarks) { described_class.new }

  describe '#all' do
    it { expect(bookmarks.all).to include("http://www.makersacademy.com") }
    it { expect(bookmarks.all).to include("http://www.destroyallsoftware.com") }
    it { expect(bookmarks.all).to include("http://www.google.com") }
  end
end