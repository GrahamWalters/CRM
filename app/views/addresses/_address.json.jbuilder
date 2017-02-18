json.extract! address, :id, :label, :address_1, :address_2, :city, :state, :zip, :country, :customer_id, :created_at, :updated_at
json.url address_url(address, format: :json)