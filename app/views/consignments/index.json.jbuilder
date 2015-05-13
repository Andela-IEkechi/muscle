json.array!(@consignments) do |consignment|
  json.extract! consignment, :id, :product_id, :quantity, :user_id
  json.url consignment_url(consignment, format: :json)
end
