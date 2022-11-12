json.extract! ticket, :id, :type, :description, :dev_id, :service_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
