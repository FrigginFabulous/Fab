json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :name, :location, :email
  json.url appointment_url(appointment, format: :json)
end
