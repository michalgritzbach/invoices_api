require 'rails_helper'

RSpec.describe Invoice, type: :model do
  it 'should always have a client and a category' do
    invoice = create(:invoice)

    expect(invoice.category).to be_a(Category)
    expect(invoice.client).to be_a(Client)
  end

  it 'should calculate price with vat correctly' do
    invoice = build(:invoice, price: 10_000.0, vat_rate: 0)
    expect(invoice.price_with_vat).to eq(10_000.0)

    invoice = build(:invoice, price: 10_000.0, vat_rate: 5)
    expect(invoice.price_with_vat).to eq(10_500.0)

    invoice = build(:invoice, price: 10_000.0, vat_rate: 15)
    expect(invoice.price_with_vat).to eq(11_500.0)

    invoice = build(:invoice, price: 10_000.0, vat_rate: 21)
    expect(invoice.price_with_vat).to eq(12_100.0)
  end
end
