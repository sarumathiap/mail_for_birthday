json.extract! reminder, :id, :name, :email, :date_of_birth, :created_at, :updated_at
json.url reminder_url(reminder, format: :json)
