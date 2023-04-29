require 'rails_helper'
require_relative 'actions_helper_entity'

RSpec.describe Group, type: :system do
  include ActionsHelperEntity
  it 'Can see the Group Heding' do
    sign_up
    add_group
    add_transaction
    visit groups_path
    click_link 'House'
    click_link 'ADD AN EXPENSE'
    expect(page).to have_content('ADD EXPENSE')
  end
end
