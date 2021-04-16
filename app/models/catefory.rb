class Catefory < ApplicationRecord
    validates_presence_of :title, :url
end
