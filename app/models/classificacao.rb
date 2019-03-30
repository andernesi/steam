class Classificacao < ApplicationRecord
    has_many :jogos

    validates :nome, :idade_minima, presence: true
    validates :idade_minima, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 18,
                                    message: "A idade Minima deve ser entre 0 e 18 anos"}
    validates :idade_minima, uniqueness: {message: "Ja existe uma classificacao com esta idade minimaA"}

end
