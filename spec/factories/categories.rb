# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :category do
    sequence(:name) { |i| "Category #{i}" }

    factory(:category_with_invoices) do
      transient do
        invoices_count 5
      end

      after(:create) do |category, evaluator|
        create_list(:invoice, evaluator.invoices_count, category: category)
      end
    end
  end
end
