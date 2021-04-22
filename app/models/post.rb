class Post < ApplicationRecord
    validates :title, presence: true
    validates :summary, presence: true
    #validates :body, presence: true

    belongs_to :catefory 

    after_create :update_total_posts_count

    scope :active, -> { where( active: true )}
    scope :order_by_latest_first, -> { order( created_at: :desc )}
    scope :limit_5, -> { limit( 1 )}

    private 

    def update_total_posts_count
        catefory.increment(:total_count, 1)
    end

end
