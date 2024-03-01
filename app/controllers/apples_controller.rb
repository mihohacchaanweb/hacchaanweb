class ApplesController < ApplicationController
before_action :authenticate_user!, only: [:new, :create]

  def top
    @apples = Apple.all
    @Apples = Apple.select('title')
    @Apples = @apples.page(params[:page]).per(5)
    @merons = Meron.all
    @merons = @merons.page(params[:page]).per(3)
  end 
         

  def index
    @apples = Apple.all
    @Apples = @apples.page(params[:page]).per(10)
    
  end   

  def show
    @apple = Apple.find(params[:id])
  end    

 

  

  def new
    @apple = Apple.new
    @meron = Meron.new
  end
        
  def create
    apple = Apple.new(apple_parameter)
    apple.user_id = current_user.id 
    if apple.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    @apple = Apple.find(params[:id])
    @apple.destroy
    redirect_to apples_path, notice:"削除しました"
  end

  def edit
    @apple = Apple.find(params[:id])
  end

  def update
    @apple = Apple.find(params[:id])
    if @apple.update(apple_parameter)
      redirect_to apples_path, notice: "編集しました"
    else
      render 'edit'
    end
  end
   
  

        private
      
        def apple_parameter
          params.require(:apple).permit(:video, :icon, :genre, :start_time, :youtube_url, :title, :about).merge(user_id: current_user.id)
        end
      
   end
