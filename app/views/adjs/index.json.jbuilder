json.array!(@adjs) do |adj|
  json.extract! adj, :id, :name
  json.url adj_url(adj, format: :json)
end
