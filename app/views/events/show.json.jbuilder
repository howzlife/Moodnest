json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :Expectation, :start_time, :end_time, :Outcome, :created_at, :updated_at
  json.url event_url(event, format: :json)
end



