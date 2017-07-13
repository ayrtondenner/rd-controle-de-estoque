json.extract! produto, :id, :codigo, :nome, :fornecedor_id, :quantidade, :created_at, :updated_at
json.url produto_url(produto, format: :json)
