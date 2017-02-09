require 'rails_helper'

feature 'liking photos' do

  scenario 'a user can like a post, which updates the review endorsement count', js: true do
    visit '/'
    first('.like').click
    expect(page).to have_content('1 like')
  end
  #
  # scenario 'the post displays the correct number of likes', js: true do
  #   visit '/'
  #   find('#like').click
  #   sign_out_and_sign_up_as_another
  #   find('#like').click
  #   expect(page).to have_content('2 likes')
  # end
  #
  # scenario 'a post cannot be liked twice by the same user' do
  #
  # end
end
