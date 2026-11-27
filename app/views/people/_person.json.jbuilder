json.extract! person, :id, :type, :name, :age, :gender, :mood, :created_at, :updated_at
json.url person_url(person, format: :json)
