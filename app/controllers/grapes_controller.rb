class GrapesController < ApplicationController
    def index
    end
  
    def new
      @grape = Grape.new
    end
  
    def show
      @grape = Grape.find_by(id: params[:id])
    end
  
    def create
      @grape = Grape.new(grape_params)
      params[:grape][:question] ? @grape.question = params[:grape][:question].join("") : false
      if @grape.save
          flash[:notice] = "診断が完了しました"
          redirect_to grape_path(@grape.id)
      else
          redirect_to :action => "new"
      end
    end
  
  private
    def grape_params
        params.require(:grape).permit(:id, question: [])
    end
  end
  