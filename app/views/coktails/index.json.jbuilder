json.array!(@coktails) do |coktail|
  json.extract! coktail, :id, :name, :description
  json.url coktail_url(coktail, format: :json)
end
