json.summary do
  json.array!(@invoices) do |month|
    json.date(month.date)
    json.price_with_vat(month.price_with_vat)
    json.price(month.price)
  end
end
