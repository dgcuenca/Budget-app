require 'rails_helper'

RSpec.describe EntitiesController, type: :request do
  include Warden::Test::Helpers

  before do
    @user = User.create!(name: 'Diego', email: 'diego@diego.com', password: '123456')
    login_as(@user, scope: :user)
    @group = Group.create!(name: 'Home',
                           icon: 'piggy-bank.png', user_id: @user.id)
  end

  describe 'GET #new' do
    before do
      get new_group_entity_path(group_id: @group.id)
    end

    it 'should returns a successful response' do
      expect(response).to be_successful
    end

    it 'should displays the index template' do
      expect(response).to render_template(:new)
    end

    it 'should displays the correct page name' do
      expect(response.body).to include('ADD EXPENSE')
    end
  end
end
