module API
  module V1
    class InvoicesController < ApplicationController
      def index
        @invoices = Invoice.all.includes(:client, :category)

        render(json: @invoices)
      end
    end
  end
end
