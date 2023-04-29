require 'rails_helper'

RSpec.describe Group, type: :model do
  subject do
    @user = User.create!(name: 'Diego', email: 'diego@diego.com', password: '123456')
    Group.create!(name: 'Home', icon: 'piggy-bank.png', user_id: @user.id)
  end

  before { subject.save }

  context 'Testing validation' do
    it 'Should contain a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'Should contain an icon' do
      subject.icon = nil
      expect(subject).to_not be_valid
    end

    it 'Should save successfully' do
      expect(subject).to be_valid
    end
  end
end