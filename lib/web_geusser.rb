require 'sinatra'
require 'sinatra/reloader'

  RANDOM = rand(100)
get'/' do

    message = guess_check

    erb :index, :locals => {:number => RANDOM, message: message}

end


def guess_check


    if RANDOM == params['guess'].to_i
       "Your guess is right!"
    elsif RANDOM > params['guess'].to_i
        "Too Low"
      elsif RANDOM < params['guess'].to_i
        "Too High"
    end

end
