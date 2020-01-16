class AdsController < ApplicationController
    #CREATE
        #New
        #Make a get request to '/ads/new'

    #READ
        #Index
        #Make a get request to '/ads'

        get '/ads' do 
            @ads = Ad.all
            erb :'ads/index'
        end 

    #UPDATE
        #Edit
        #Make a get requrest to /'ads/:id/edit'

    #DESTROY
        #Make a delete rquest to '/ads/:id'

end 