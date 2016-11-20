def sign_in
  visit('/users/sign_in')
  fill_in('Email', with: 'test@example.com')
  fill_in('Password', with: 'testtest')
  click_button('Log in')
end

def sign_up
  visit('/users/sign_up')
  fill_in('Email', with: 'test@example.com')
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end

def sign_out_and_sign_up_as_another
  click_link('Sign out')
  click_link('Sign in')
  click_link('Sign up')
  fill_in('Email', with: 'test2@example.com')
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end

def sign_out
  click_link('Sign out')
end

def add_post
  visit('posts/new')
  fill_in('Description', with: 'test description')
  fill_in 'Tags', with: 'yolo, swag'
  page.attach_file('post_image', Rails.root + 'spec/images/image.jpg')
  click_button 'Create Post'
end

def like
  visit '/'
  click_link 'Like'
end
