json.extract! forum, :id, :cognome, :nome, :indirizzo, :email, :numero, :annotazioni, :created_at, :updated_at
json.url forum_url(forum, format: :json)
