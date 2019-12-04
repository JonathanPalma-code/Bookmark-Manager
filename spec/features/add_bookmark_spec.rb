feature 'add bookmarks' do
  scenario 'add' do
    visit '/'
    click_on 'add'
    fill_in 'url', with: 'http://io.com'
    fill_in 'title', with: 'io'
    click_on 'add'
    expect(page).to have_content 'io'
  end
end