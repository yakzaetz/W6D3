class UsersController < ApplicationController
    
    def index
        # render plain: "I'm in the index actions!"
        # users = 
        render json: User.all
    end

    # def create
    #     render json: params
    # end 

    def show
        user = User.find(params[:id])
        if user 
            render json: user
        else
            render json: params
        end
    end

    def create
        # debugger
        user = User.new(params.require(:user).permit(:name, :email))
        # replace the `user_attributes_here` with the actual attribute keys
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end 
    end

    def destroy
        user = User.find(params[:id])
        if user 
            user.destroy
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end 
    end

    def update
        user = User.find(params[:id])
        if user 
            # debugger
            user.update(params.require(:user).permit(:name, :email))
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end
    
end