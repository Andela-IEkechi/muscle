json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :product_id, :customer_name, :customer_phone, :invoice_number, :customer_address
  json.url invoice_url(invoice, format: :json)
end
