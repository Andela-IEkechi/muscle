json.array!(@releases) do |release|
  json.extract! release, :id, :product_id, :quantity, :user_id, :invoice_number, :customer_number
  json.url release_url(release, format: :json)
end
