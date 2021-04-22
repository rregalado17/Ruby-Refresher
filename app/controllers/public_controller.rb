class PublicController < ApplicationController

    def homepage
        @posts = Post.all
        @catefories = Catefory.all 
    end

    def about
    end

    def blog 
    end

    def contact
    end
    



end