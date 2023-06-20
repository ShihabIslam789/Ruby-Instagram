class Post < ApplicationRecord

    validates :title, presence: true, length: {minimum: 5, maximum: 100}
    validates :description, prescence: true, length: {minimum: 5, maximum: 500}
    validates :keywords, prescence: true, length: {minimum: 5, maximum: 100}
        
    end
    
end
