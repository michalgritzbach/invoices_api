# == Schema Information
#
# Table name: clients
#
#  id             :integer          not null, primary key
#  name           :string
#  company_number :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :client do
    name FFaker::Name.name
    company_number Kernel.rand(1_000_000_000..9_999_999_999)

    factory(:client_with_invoices) do
      transient do
        invoices_count 5
      end

      after(:create) do |client, evaluator|
        create_list(:invoice, evaluator.invoices_count, client: client)
      end
    end
  end
end
