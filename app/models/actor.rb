class Actor < ApplicationRecord
    has_many :characters
    has_many :dramas, through: :characters
end
