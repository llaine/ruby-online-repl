require 'bundler'

Bundler.require

require './installer'

class App < Sinatra::Base
  get '/' do
    gemname = params[:gem]
    Installer.install_gem(gemname)
    'Gem install!'
  end
end

run App