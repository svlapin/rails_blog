require 'rails_helper'

RSpec.describe Post, :type => :model do
  let(:post) { FactoryGirl.create(:post) }

  it 'is valid' do
    expect(post).to be_valid
  end

  it 'has an author' do
    expect(post.user).not_to be_nil
  end
end
