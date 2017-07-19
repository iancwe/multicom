json.extract! company, :id, :name, :subdomain, :img_url, :user_id, :created_at, :updated_at
json.url company_url(company, format: :json)
