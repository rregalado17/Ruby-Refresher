class CateforyController < ApplicationController
    before_action :set_catefory


    def new
        @catefory = Catefory.new     
    end

    
    def create
        @catefory = Catefory.new(post_params)
        @catefory.save
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_catefory
      @catefory = Catefory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def catefory_params
      params.require(:catefory).permit(:title, :catefory_id)
    end
end
