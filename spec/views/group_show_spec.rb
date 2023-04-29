require 'rails_helper'
require_relative 'actions_helper_group'

RSpec.describe Group, type: :system do
  include ActionsHelperGroup
  it 'Can see the Group Heading' do
    sign_up
    add_group
    visit groups_path
    click_link 'House'
    expect(page).to have_content('TRANSACTIONS')
  end

  it 'Can see the new ADD EXPENSE heading' do
    sign_up
    add_group
    visit groups_path
    click_link 'House'
    click_link 'ADD AN EXPENSE'
    expect(page).to have_content('ADD EXPENSE')
  end
end
