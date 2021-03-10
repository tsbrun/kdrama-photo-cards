class Character < ApplicationRecord
    belongs_to :drama
    belongs_to :actor, optional: true

    validates_presence_of :name, :gender, :role, :img_url
end
