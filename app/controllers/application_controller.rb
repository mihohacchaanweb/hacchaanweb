class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller? 

    private
  
      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up,keys:[:name, :email]) # 引用(https://qiita.com/yuki82511988/items/73659af9d1049bd1b256)(https://qiita.com/kazuki_k/items/1613b942e46f8207a388)
      end
end
