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
  end
end
