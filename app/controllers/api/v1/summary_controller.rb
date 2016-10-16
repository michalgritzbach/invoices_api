module API
  module V1
    class SummaryController < ApplicationController
      def months
        invoices_by_months = Invoice.summary
        @invoices = invoices_by_months.map do |invoices|
          OpenStruct.new(
            date: invoices.date,
            price_with_vat: invoices.price_with_vat,
            price: invoices.price
          )
        end
      end

      def categories
        invoices_by_categories = Invoice.summary.select(:category_id).group(:category_id).includes(:category)
        @invoices = invoices_by_categories.map do |invoices|
          OpenStruct.new(
            date: invoices.date,
            category: invoices.category,
            price_with_vat: invoices.price_with_vat,
            price: invoices.price
          )
        end
      end
    end
  end
end
