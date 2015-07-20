json.array!(@people) do |person|
  json.extract! person, :id, :jsonb
  json.url person_url(person, format: :json)
end
