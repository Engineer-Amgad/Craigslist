require 'pry'
class AdsController < ApplicationController
    #CREATE
        #New
        #Make a get request to '/ads/new'
    get '/ads/new' do 
        if Helpers.is_logged_in?(session)
            erb :'/ads/new'
        else
            redirect '/login'
        end 
    end 

    #CREATE
        #New
        #Make a get request to '/ads/new'

        post '/ads' do 
            ad = Ad.new(params)
            if !ad.title.empty? && !ad.description.empty? && !ad.contact.empty?
                user = User.find(session[:user_id])
                user.ads.create(params)
                redirect '/ads'  
            else 
                @error = "Data is invalid. Please fill in required fields."
                erb :'/ads/new'
            end 
        end 
    #READ
        #Index
        #Make a get request to '/ads'

    get '/ads' do 
        @ads = Ad.all.reverse
        erb :'ads/index'
    end 

    #Show
    # Make a get request to '/ads/:id'
    
    get '/ads/:id' do 
        @ad = Ad.find(params["id"])
        erb :'ads/show'
    end
    #UPDATE
        #Edit
        #Make a get requrest to /'ads/:id/edit'

    get '/ads/:id/edit' do 
                
        redirect '/login' if !Helpers.is_ad_creater?(params["id"], session[:user_id])

        @ad = Ad.find(params["id"])
        erb :'/ads/edit'
    end 
       
        #Update
        #make a patch request to '/ads/:id'

    patch '/ads/:id' do
        redirect '/ads' if params["title"].empty? || params["description"].empty? || params["contact"].empty?
        redirect '/login' if !Helpers.is_ad_creater?(params["id"], session[:user_id])
        
        ad = Ad.find(params[:id])
        ad.update(title: params["title"], description: params["description"], image: params["image"], price: params["price"], contact: params["contact"])
        redirect "/ads/#{params[:id]}"
    
    end 

    #DESTROY
        #Make a delete rquest to '/ads/:id'
    delete '/ads/:id' do 
        redirect '/login' if !Helpers.is_ad_creater?(params["id"], session[:user_id])

        ad = Ad.find(params[:id])
        ad.destroy
        redirect '/ads'
    end 
end 