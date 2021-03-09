class Character < ApplicationRecord
    belongs_to :drama
    belongs_to :actor
end
