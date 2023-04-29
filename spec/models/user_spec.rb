require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'Diego', email: 'diego@diego.com', password: '123456')
  end
  before { subject.save }

  context 'User should create a user with name' do
    it 'should have a name attribute present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'name should be "Diego"' do
      expect(subject.name).to eq('Diego')
    end
  end
  context 'User email should be required' do
    it 'should have an email attribute present' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'email should be "diego@diego.com"' do
      expect(subject.email).to eq('diego@diego.com')
    end
  end

  context 'User password should be required' do
    it 'should have a password attribute present' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'name should be "123456"' do
      expect(subject.password).to eq('123456')
    end
  end
end