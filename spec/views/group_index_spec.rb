require 'rails_helper'
require_relative 'actions_helper_group'

RSpec.describe Group, type: :system do
  include ActionsHelperGroup
  it 'Can see the Group Heding' do
    sign_up
    expect(page).to have_content('CATEGORIES')
  end

  it 'Clicking on ADD CATEGORY should redirects to new category page' do
    sign_up
    click_link 'ADD CATEGORY'
    expect(page).to have_current_path(new_group_path)
  end

  it 'Can see groups when I add a group' do
    sign_up
    add_group
    visit groups_path
    expect(page).to have_content('House')
  end

end
