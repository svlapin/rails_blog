require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) { FactoryGirl.create(:user) }

  it 'is valid' do
    expect(user).to be_valid
  end

  it 'is authenticated properly' do
    expect(user.authenticate(user.password)).to eq(true)
  end
end
