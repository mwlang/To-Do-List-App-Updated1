json.array!(@roles) do |role|
  json.extract! role, :id, :name, :create, :read, :update, :delete
  json.url role_url(role, format: :json)
end
