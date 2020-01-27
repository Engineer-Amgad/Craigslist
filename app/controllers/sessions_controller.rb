class SessionsController < ApplicationController

    # users can log in
    get '/login' do
        erb :'users/login'
    end 

    post '/login' do
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect '/ads'
        else
            redirect '/login'
        end
    end 

    #users can log out
    get '/logout' do 
        session.clear
        redirect '/'
    end 
    
end 