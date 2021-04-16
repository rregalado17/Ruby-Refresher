class Post < ApplicationRecord
    validates :title, presence: true 
    validates :summary, presence: true, length: { maximum: 200 }
    validates :body, presence: true, length: {minimum: 100 }

    def details
        "This post was created on #{ created_at.strftime("%d %M %Y") }"
    end

    def self.total
        all.size
    end

end
