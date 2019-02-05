require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relative('./models/game')
also_reload('./game/*')

get '/' do
  erb (:home)
end

get '/rules' do
  erb (:rules)
end

get '/:thing1/:thing2' do
  game = Game.new(params[:thing1], params[:thing2])
  @game_result = game.rock_paper_scissors_game()
  erb (:result)
end

# If we wanted to give some feedback about which player won the game- In my case statements I would just change the return string to "Player 1 wins!" or "Player 2 wins!" depending on which thing won, in what order.
