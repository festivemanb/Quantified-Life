json.array!(@daily_entries) do |daily_entry|
  json.extract! daily_entry, :id, :date, :mood, :activity, :drinks, :people_talked, :rating, :coffee, :notes, :text
  json.url daily_entry_url(daily_entry, format: :json)
end
