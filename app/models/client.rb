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

class Client < ApplicationRecord
  has_many :invoices

  def to_builder
    Jbuilder.new do |client|
      client.call(self, :id, :name)
    end
  end
end
