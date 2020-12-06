class Expensetype < ApplicationRecord
    has_one :expense

    def to_s
        self.tipo_receita
    end
end
