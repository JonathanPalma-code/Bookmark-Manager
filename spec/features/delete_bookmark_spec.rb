feature 'delete bookmark' do
  scenario 'user can delete a bookmark' do
    visit '/'
    click_on 'add'
    fill_in 'url', with: 'http://io.com'
    fill_in 'title', with: 'io'
    click_on 'add'
    visit '/'
    click_on 'delete'
    fill_in 'title', with: 'io'
    click_on 'delete'
    expect(page).not_to have_content 'io'
  end
end