class Account < ApplicationRecord
    belongs_to :accounttypes, optional: true
    belongs_to :users, optional: true
end
