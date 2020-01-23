class UsersController < ApplicationController
    
    
    #user can sign up
    get '/signup' do
        erb :'users/signup'
    end 

    post '/signup' do 
        # binding.pry
        if params[:name].empty? || params[:password].empty?
            @error = "Username and password can not be blank."
            erb :'users/signup'
        elsif User.find_by(name: params[:name])
            @error ="An account with this username already exists."
            erb :'users/signup'
        else
            user = User.new(name: params[:name], password: params[:password])
            user.save
            session[:user_id] = user.id
            redirect '/ads'
        end
    end 

end 