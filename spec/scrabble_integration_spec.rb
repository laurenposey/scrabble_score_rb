require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('scrabble score checker', {:type => :feature}) do
  it('processes the user entry and returns the appropriate scrabble score') do
    visit('/')
    fill_in('title', :with => 'potato')
    click_button('Send')
    expect(page).to have_content('8')
  end
end
