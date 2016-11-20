require 'rails_helper'

feature 'posts' do
  context 'no posts have been added' do
    scenario 'should display a link to add a post' do
      visit '/'
      expect(page).not_to have_css('img')
      expect(page).to have_link 'New Post'
    end
  end

  context 'posts have been added' do
    before do
      sign_up
      add_post
    end

    scenario 'display posts' do
      visit '/'
      expect(page).to have_css('img')
      expect(page).to have_content('test description')
    end
  end

  context 'creating posts' do
    before do
      sign_up
    end

    scenario 'posts cannot be added if user is not signed in' do
      sign_out
      visit '/'
      click_link 'New Post'
      expect(page).not_to have_content 'Description'
      expect(page).to have_content 'You need to sign in or sign up before continuing.'
    end
  end

  context 'viewing single post page' do
    before do
      sign_up
      add_post
    end
      scenario 'can click on an image and see more details' do
      visit '/'
      find("#postimage").click
      expect(page).to have_content 'test description'
    end
  end

  context 'editing posts' do
    before do
      sign_up
      add_post
    end

    scenario 'let a user edit a post' do
      visit '/'
      click_link 'Edit'
      fill_in 'Description', with: 'different description'
      click_button 'Update Post'
      expect(page).to have_content 'different description'
      expect(page).not_to have_content 'test description'
      expect(current_path).to eq '/posts'
    end
  end

  context 'deleting posts' do
    before do
      sign_up
      add_post
    end

    scenario 'removes a post when a user clicks a delete link' do
      visit '/'
      click_link 'Delete'
      expect(page).not_to have_content 'test description'
      expect(page).to have_content 'Post deleted successfully'
    end
  end


end
