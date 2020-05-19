require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    oringinal_string = params["string"]
    @reversed_string = oringinal_string.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends


  end
end
