json.extract! login, :id, :UserID, :Password, :PeerID, :UserName, :Icon, :Ch_notification, :CallID, :created_at, :updated_at
json.url login_url(login, format: :json)
