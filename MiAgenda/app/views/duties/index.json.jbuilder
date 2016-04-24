json.array!(@duties) do |duty|
  json.extract! duty, :id, :user_id, :tittle, :body, :date_of_delivery, :priority
  json.url duty_url(duty, format: :json)
end
