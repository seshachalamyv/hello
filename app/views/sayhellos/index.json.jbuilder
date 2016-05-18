json.array!(@sayhellos) do |sayhello|
  json.extract! sayhello, :id, :body
  json.url sayhello_url(sayhello, format: :json)
end
