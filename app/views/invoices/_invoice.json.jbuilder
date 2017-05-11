json.extract! invoice, :id, :name, :email, :date_of_birth, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
