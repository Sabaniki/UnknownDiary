json.extract! diary, :id, :text, :created_day_id, :is_edited, :created_at, :updated_at
json.url diary_url(diary, format: :json)
