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

FactoryGirl.define do
  factory :invoice do
    sequence(:number) { |i| "#{DateTime.current.year}#{i.to_s.ljust(4, '0')}" }
    price { Kernel.rand(99_999_999.99) }
    vat_rate { [0, 5, 15, 21].sample }
    issued_at { DateTime.current }
    client
    category
  end
end
