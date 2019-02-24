class Article < ApplicationRecord
    validates_presence_of :title, :content
    validates :title, presence: true,
                    length: { minimum: 5 }
end
