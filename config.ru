require 'bundler'

Bundler.require



class App < Sinatra::Base
  get '/' do
      'Hello world'
  end
end


run App

