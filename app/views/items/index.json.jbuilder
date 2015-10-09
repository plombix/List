json.array!(@items) do |item|
  json.extract! item, :id, :name, :goupAdj_id, :adj_id
  json.url item_url(item, format: :json)
end
