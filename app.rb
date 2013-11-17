require "sinatra/base"

module ToAlien
  class Site < Sinatra::Base

    #set :maintenance, true

    before do
      if ENV['MAINTENANCE'] == 'True' && request.path_info != '/maintenance'
        redirect to '/maintenance'
      end
    end

    get '/' do
      "Hello world"
    end

    get '/maintenance' do
      "Under maintenance"
    end

  end
end
