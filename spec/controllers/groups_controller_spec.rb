require 'rails_helper'

RSpec.describe GroupsController, type: :request do
  include Warden::Test::Helpers

  before do
    @user = User.create!(name: 'Diego', email: 'diego@diego.com', password: '123456')
    login_as(@user, scope: :user)
    @group = Group.create!(name: 'Home',
      icon: 'piggy-bank.png', user_id: @user.id)
  end

  describe 'GET /index' do
    it 'responds successfully' do
      get '/groups'
      expect(response).to be_successful
    end

    it 'renders the index template' do
      get '/groups'
      expect(response).to render_template(:index)
    end

    it 'displays the correct heading' do
      get '/groups'
      expect(response.body).to include('CATEGORIES')
    end
  end

  describe 'GET /show' do

    before do
      get group_path(id: @group.id)
    end

    it 'responds successfully' do
      expect(response).to be_successful
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end

    it 'displays the correct heading' do
      expect(response.body).to include('TRANSACTIONS')
    end
  end

  describe 'GET /new' do

    before do
      get new_group_path      
    end

    it 'should returns a successful response' do
      expect(response).to be_successful
    end

    it 'should displays the new template' do
      expect(response).to render_template(:new)
    end

    it 'should displays the correct heading' do
      expect(response.body).to include('ADD CATEGORY')
    end
  end

end
