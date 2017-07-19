json.extract! staff, :id, :name, :email, :password, :company_id, :created_at, :updated_at
json.url staff_url(staff, format: :json)
