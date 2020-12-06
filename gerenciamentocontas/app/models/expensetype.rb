class Expensetype < ApplicationRecord
    belongs_to :expense

    def to_s
        self.tipo_receita
    end
end
