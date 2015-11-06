json.array!(@needs) do |need|
  json.extract! need, :id, :name, :fiscalyear, :description
  json.url need_url(need, format: :json)
end
