require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/score') do
  @score = params.fetch('score_form').scrabble()
  erb(:score)
end
