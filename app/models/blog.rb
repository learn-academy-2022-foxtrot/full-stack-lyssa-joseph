class Blog < ApplicationRecord

    validates :title, presence: true
    validates :title, length: { minimum: 4 }
    validates :title, uniqueness: true    
    
    validates :content, presence: true
    validates :content, length: { minimum: 10 }

end
