class EventsController < ApplicationController
    
    require 'rubygems'
    require 'httparty'

    
    #respond_to do |format| 
     #   format.js {render partial: 'text_message'}
    #end
    
    respond_to :html, :js
    
    def index  
    end
    
    def httparty_time
        
        
        @owner = params[:owner]
        @repo = params[:repo]
        @response =     HTTParty.get("https://api.github.com/repos/#{@owner}/#{@repo}/events")
        #@response =     HTTParty.get("https://api.github.com/repos/rails/rails/events")
        @httparty_json = JSON.parse(@response.body)
        
        
    end
    
end
