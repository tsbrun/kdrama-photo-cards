class Actor < ApplicationRecord
    has_many :characters
    has_many :dramas, through: :characters

    validates_presence_of :name, :gender, :img_url, :wiki_url
end
