module ActionsHelperGroup
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
end
