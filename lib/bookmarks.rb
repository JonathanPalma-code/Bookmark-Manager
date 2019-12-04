require 'pg'

class Bookmarks

  def all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmarks_manager_test')
    else
      connection = PG.connect(dbname: 'bookmarks_manager')
    end
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark }
  end

  def self.add(text, title)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmarks_manager_test')
    else
      connection = PG.connect(dbname: 'bookmarks_manager')
    end
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('#{text}', '#{title}');")
  end
end