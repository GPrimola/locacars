json.extract! patio, :id, :unidade_id, :nome, :created_at, :updated_at
json.url unidade_patio_url(patio.unidade, patio, format: :json)
