class Drama < ApplicationRecord
    has_many :characters
    has_many :actors, through: :characters

    validates_presence_of :title, :img_url, :wiki_url
end
