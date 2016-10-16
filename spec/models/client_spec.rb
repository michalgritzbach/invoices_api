require 'rails_helper'

RSpec.describe Client, type: :model do
  it 'should be successfully saved' do
    client = build(:client)
    pretty_inspect
    client.save

    expect(Client.first).to eq(client)
  end
end
