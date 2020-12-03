json.extract! expense, :id, :nome, :quantidade, :data, :comentario, :created_at, :updated_at
json.url expense_url(expense, format: :json)
