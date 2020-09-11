#!/usr/bin/env ruby

require 'sinatra'
require './egorka'


get '/' do
    oborona = Egorka::what_is_my_oborona
    erb :oborona, { :locals => { :oborona => oborona }, :layout => :layout }
end


get '/egorka' do
    content_type :json
    { oborona: Egorka::what_is_my_oborona }.to_json
end