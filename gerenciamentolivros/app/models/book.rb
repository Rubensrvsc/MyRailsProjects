class Book < ApplicationRecord
    searchkick
    has_many :author
    has_one :read

    def to_s
        nome_livro
    end
end
