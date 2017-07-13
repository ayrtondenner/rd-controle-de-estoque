json.extract! pedido, :id, :codigo, :quantidade, :cliente_id, :produto_id, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)