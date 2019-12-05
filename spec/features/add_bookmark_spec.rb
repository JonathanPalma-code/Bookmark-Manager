feature 'add bookmarks' do
  scenario 'add' do
    add_bookmark
    expect(page).to have_content 'io'
  end
end