feature 'View a list of bookmarks' do
  scenario 'See all bookmarks at once' do
    connection = PG.connect(dbname: 'bookmarks_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com', 'Makers');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.google.com', 'Google');")

    visit '/bookmarks'
    expect(page).to have_content "Makers"
    expect(page).to have_content "Google"
  end
end