class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def create      
        user = User.new(params.require(:user).permit(:username))
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        user = User.find(params[:id])

        unless user.nil?
            render json: user
        else
            render json: user.errors.full_messages, status: 404
        end
    end
    
    # def user_params
    #     params.require(:user).permit(:name, :email)
    # end

    def destroy
         user = User.find(params[:id])

        unless user.nil?
            user.destroy
        else
            render json: user.errors.full_messages, status: 404
        end
    end

    def update
        user = User.find(params[:id])

        # unless user.nil?
        if user.update_attributes(params.require(:user).permit(:username))
            render json: user
        else
            render json: user.errors.full_messages, status: 404
        end
    end
end