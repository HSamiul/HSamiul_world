class Article < ApplicationRecord
    belongs_to :category

    validates_presence_of :title
    validates_presence_of :content

    scope(:alphabetical, -> { order(:title) })
    scope(:active, -> { where(active: true) })
    #Bogus
end
