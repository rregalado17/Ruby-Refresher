class Post < ApplicationRecord
    validates :title, presence: true
    validates :summary, presence: true
    #validates :body, presence: true

    belongs_to :catefory 

    after_create :post_log_message

    private 

    def post_log_message
        puts "Posts created with an id of #{id} "
    end

end
