class SessionsController < ApplicationController

    # users can log in
    get '/login' do
        erb :'users/login'
    end 
    #users can log out

    post '/login' do
        if params[:name].empty? || params[:password].empty?
            @error = "Username or password is blank."
            erb :'users/login'
        else
            if user = User.find_by(name: params[:name], password: params[:password])
                session[:user_id] = user.id 
                redirect '/ads'
            else
                @error = "Account not found"
                erb :"users/login"
            end 
        end 
    end 
    
end 