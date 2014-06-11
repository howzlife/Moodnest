json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :Expectation, :start_time, :end_time, :Outcome
  json.url event_url(event, format: :json)
end
