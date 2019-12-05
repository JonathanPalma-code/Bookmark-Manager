def add_bookmark
  visit '/'
  click_on 'add'
  fill_in 'url', with: 'http://io.com'
  fill_in 'title', with: 'io'
  click_on 'add'
end