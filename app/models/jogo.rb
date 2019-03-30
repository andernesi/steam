class Jogo < ApplicationRecord
   
   belongs_to :classificacao
   has_many :bilbioteca_de_usuario, class_name: 'biblioteca'
   
   
    validates :titulo, :desenvolvedora, :descricao, :lancamento, presence: true

    scope :por_titulo, lambda { |titulo = nil|
        where(titulo: titulo) if titulo
}
end

