json.array!(@apts) do |apt|
  json.extract! apt, :id, :name, :time
  json.url apt_url(apt, format: :json)
end
