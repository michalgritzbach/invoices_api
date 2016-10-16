# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  has_many :invoices

  def to_builder
    Jbuilder.new do |category|
      category.call(self, :id, :name)
    end
  end
end
