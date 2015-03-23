require 'sinatra'
require 'sinatra/reloader'

  RANDOM = rand(100)
get'/' do

    guess   = params['guess']
    message = guess_check(guess)

    erb :index, locals: {number: RANDOM, message: message}

end


def guess_check(guess)


    if RANDOM == guess.to_i
       "Your guess is right!"
    elsif RANDOM - 5 > guess.to_i
        "Way Too Low!"
      elsif RANDOM + 5 < guess.to_i
        "Way Too High!"
      elsif RANDOM > guess.to_i
        "Too Low"
      elsif RANDOM < guess.to_i
        "Too High"
    end


end
