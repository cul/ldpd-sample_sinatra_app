require 'sinatra/base'

class ExampleApp < Sinatra::Base
  get '/' do
    'Hello from Sinatra!'
  end

  get '/alternate-page' do
    'Hello from the alternate page!'
  end
end
