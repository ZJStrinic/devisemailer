class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 5 }
    
    belongs_to :user, optional: true
    has_many :comments
end
