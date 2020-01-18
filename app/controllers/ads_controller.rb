class AdsController < ApplicationController
    #CREATE
        #New
        #Make a get request to '/ads/new'
    get '/ads/new' do 
        erb :'/ads/new'
    end 

    #CREATE
        #New
        #Make a get request to '/ads/new'

        post '/ads' do 
            ad = Ad.new(params)
            if ad.save
                redirect '/ads'  
            else 
                @error = "Data is invalid. Please try again."
                erb :'/ads/new'
            end 
        end 
    #READ
        #Index
        #Make a get request to '/ads'

    get '/ads' do 
        @ads = Ad.all
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

    #DESTROY
        #Make a delete rquest to '/ads/:id'

end 