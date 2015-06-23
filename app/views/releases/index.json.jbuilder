json.array!(@releases) do |release|
  json.extract! release, :id, :user_id, :purchase_id, :confirmation_code
  json.url release_url(release, format: :json)
end
