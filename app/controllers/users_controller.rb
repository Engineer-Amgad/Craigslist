class UsersController < ApplicationController
    
    
    #user can sign up
    get '/signup' do
        erb :'users/signup'
    end 

    post '/signup' do 
        user = User.new(params)
        if user.name.empty? || user.password.empty?
            @error = "Username and password can not be blank."
            erb :'user/signup'
        elsif User.find_by(name: user.name)
            @error ="An account with this username already exists."
            erb :'users/signup'
        else
            user.save
            session[:user_id] = user.id
            redirect '/ads'
        end
    end 
    #user can delete account

end 