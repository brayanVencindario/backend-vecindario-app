class Api::V1::UserController < ApplicationController

    skip_before_action :authorized, only: [:login, :create]


    def prueba 

        @users = User.all
        @token = decoded_token()

        render json: { status: 'Success', message:'load user', headerT:@token[0]}, status: :ok

    end
    
    # REGISTER
    def create
      @user = User.create(user_params)
     
      if @user.valid?
        @user_role = User.find(@user.id)
        @user_role.add_role :user
        render json: {status: :ok, message: 'usuario creado correctamente'}
      else
        render json: {message: "Invalid username or password", status: :error}
      end
    end
  
    # LOGGING IN
    def login
      @user = User.find_by(email: params[:email])
      @user_role = UsersRole.where(user_id: @user.id, role_id: 2).select("role_id as user_info")
      @admin_role = @user_role.empty? ? false : true
      
      if @user && @user.authenticate(params[:password])
        token = encode_token({email: @user.email, user_infor:@admin_role,user_id:@user.id}) 
        render json: { token: token, user_info:  @admin_role }
      else
        render json: {error: "Invalid username or password"}
      end
    end
  
  
    def auto_login
      render json: @user
    end
  
    private
  
    def user_params
      params.permit(:name, :last_name,:phone,:email, :password, )
    end
 

    
end
