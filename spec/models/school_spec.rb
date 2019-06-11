require 'rails_helper'

describe School do
  before(:each) do
    @school = School.create!(title: "Computer Science", room_number: 5)
  end

  it 'can be created' do
    expect(@school).to be_valid
  end

end
