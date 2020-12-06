class Accounttype < ApplicationRecord
    has_many :accounts

    def to_s
        self.tipo_conta
    end
end
