require 'rails_helper'

feature 'Hashtags' do
  it 'can add tags to a post' do
    sign_up
    add_post
    visit('/')
    expect(page).to have_link '#yolo'
    expect(page).to have_link '#swag'
  end

  it 'can display a page for a specific hashtag' do
    sign_up
    add_post
    visit('/posts')
    click_link('#yolo')
    expect(current_path).to eq "/posts/hashtag/yolo"
  end

end
