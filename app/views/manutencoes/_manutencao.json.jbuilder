json.extract! manutencao, :id, :carro_id, :data, :mecanico, :created_at, :updated_at
json.url unidade_patio_carro_manutencao_url(@unidade, @patio, @carro, manutencao, format: :json)
