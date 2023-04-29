module ActionsHelperEntity
  def sign_up
    visit new_user_registration_path
    fill_in 'user_name', with: 'Diego', id: 'user_name'
    fill_in 'user_email', with: 'diego@diego.com', id: 'user_email'
    fill_in 'user_password', with: '123456', id: 'user_password'
    fill_in 'user_password_confirmation', with: '123456', id: 'user_password_confirmation'
    click_button 'Next'
  end

  def add_group
    visit new_group_path
    fill_in 'group_name', with: 'House', id: 'group_name'
    find('input[value="entertaiment.png"]').choose
    click_button 'Create'
  end

  def add_transaction
    visit groups_path
    click_link 'House'
    click_link 'ADD AN EXPENSE'
    fill_in 'entity_name', with: 'FOOD', id: 'entity_name'
    fill_in 'entity_amount', with: '123.4', id: 'entity_amount'
    check('entity[category_id][]')
    click_button 'ADD'
  end
end
