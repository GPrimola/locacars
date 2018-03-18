json.extract! carro, :id, :patio_id, :fabricante, :nome, :modelo, :ano, :anoModelo, :created_at, :updated_at
json.url unidade_patio_carro_url(@unidade, @patio, carro, format: :json)
