class Expensetype < ApplicationRecord


    def to_s
        self.tipo_receita
    end
end
