json.array!(@group_adjs) do |group_adj|
  json.extract! group_adj, :id, :name, :adj_id
  json.url group_adj_url(group_adj, format: :json)
end
