json.extract! cliente, :id, :codigo, :razaoSocial, :cnpj, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
