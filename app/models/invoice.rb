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

class Invoice < ApplicationRecord
  belongs_to :client
  belongs_to :category

  scope :summary, -> { select('price, vat_rate, strftime("%Y-%m-01", issued_at) as date').group(:date) }

  def price_with_vat
    price * (1 + (vat_rate.to_f / 100))
  end
end
