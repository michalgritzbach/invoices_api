require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'should be successfully saved' do
    category = build(:category)
    category.save

    expect(Category.first).to eq(category)
  end
end
