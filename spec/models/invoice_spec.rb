require 'rails_helper'

RSpec.describe Invoice, type: :model do
  it 'should always have a client and a category' do
    invoice = create(:invoice)

    expect(invoice.category).to be_a(Category)
    expect(invoice.client).to be_a(Client)
  end
end
