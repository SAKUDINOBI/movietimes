json.extract! address, :id, :street_num, :city, :county, :postcode, :customer_id, :created_at, :updated_at
json.url address_url(address, format: :json)
