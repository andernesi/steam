json.extract! jogo, :id, :titulo, :descricao, :desenvolvedor, :lancamento, :created_at, :updated_at
json.url jogo_url(jogo, format: :json)
