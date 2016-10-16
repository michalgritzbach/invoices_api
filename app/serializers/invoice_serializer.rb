# == Schema Information
#
# Table name: invoices
#
#  id          :integer          not null, primary key
#  number      :integer
#  price       :decimal(8, 2)
#  vat_rate    :integer
#  issued_at   :datetime
#  client_id   :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class InvoiceSerializer < ActiveModel::Serializer
  attributes :id, :price_with_vat, :price, :vat_rate, :issued_at
  attribute :number, key: :invoice_number

  belongs_to :client
  belongs_to :category
end
