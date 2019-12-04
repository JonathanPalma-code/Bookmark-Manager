require 'pg'

def setup_test_database
  p 'Setting up test DB...'

  connection = PG.connect(dbname: 'bookmarks_manager_test')

  # Clear the bookmarks table
  connection.exec("TRUNCATE bookmarks;")
end