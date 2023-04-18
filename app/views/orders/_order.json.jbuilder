json.extract! order, :id, :brand, :title, :email, :phone, :created_at, :updated_at
json.url order_url(order, format: :json)
