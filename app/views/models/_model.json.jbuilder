json.extract! model, :id, :User, :first_name, :last_name, :created_at, :updated_at
json.url model_url(model, format: :json)
