class Catefory < ApplicationRecord
    validates_presence_of :title
    has_many :posts


end
