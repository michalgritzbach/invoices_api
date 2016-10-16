json.invoices do
  json.array!(@invoices) do |invoice|
    json.id(invoice.id)
    json.invoice_number(invoice.number)
    json.price_with_vat(invoice.price_with_vat)
    json.price(invoice.price)
    json.vat_rate(invoice.vat_rate)
    json.issued_at(invoice.issued_at)
    json.client(invoice.client.to_builder)
    json.category(invoice.category.to_builder)
  end
end
