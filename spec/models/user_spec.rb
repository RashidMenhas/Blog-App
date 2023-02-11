require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Ali', photo: 'Ali photo', bio: 'Good student', post_counter: 10) }

  before { subject.save }

  it 'The name should be ali' do
    subject.name = 'Ali'
    expect(subject).to be_valid
  end

  it 'The name should not be balnk' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'The posts_counter should be integer' do
    subject.post_counter = 'a'
    expect(subject).to_not be_valid
  end

  it 'The posts_counter should be greater than or equal to zero' do
    subject.post_counter = -10
    expect(subject).to_not be_valid
  end

  it ' Should test posts_counter to be >= 0' do
    expect(subject.post_counter).to be >= 0
  end

  it 'Has its posts_counter value is 0 by default' do
    expect(subject.post_counter).to eq 10
    expect(subject).to be_valid
  end
end
