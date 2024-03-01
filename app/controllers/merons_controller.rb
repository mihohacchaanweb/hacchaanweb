class MeronsController < ApplicationController

    def index
      @merons = Meron.all

    end
  
def new
    @meron = Meron.new
end
def show
  @meron = Meron.find(params[:id])
end   
    def create
        meron = Meron.new(meron_params)
        meron.user_id = current_user.id
        if meron.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      private
      def meron_params
        params.require(:meron).permit(:title, :about)
      end



end
