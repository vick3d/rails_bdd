class Comment < ApplicationRecord
    belongs_to :article
    validates_presence_of :commenter, :body
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, allow_blank: true 
end
