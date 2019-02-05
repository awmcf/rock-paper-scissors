require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relative('./models/game')
also_reload('./game/*')

get '/:thing1/:thing2' do
  game = Game.new(params[:thing1], params[:thing2])
  @game_result = game.rock_paper_scissors_game()
end
