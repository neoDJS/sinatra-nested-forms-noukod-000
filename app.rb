require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirates = Pirate.new(params[:pirate])

      @ships  = params[:pirate][:ships].map do |details|
        Course.new(details)
      end

      erb :"pirates/show"
    end

  end
end
