json.array!(@studies) do |study|
  json.extract! study, :id, :name, :description, :submit_date, :problem, :current, :challenges, :interventions, :economic, :social, :environmental, :financial, :other, :recommendations
  json.url study_url(study, format: :json)
end
