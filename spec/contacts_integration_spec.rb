require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('contacts,', {:type => :feature}) do
  it('processes user entry and holds all contact info') do
    visit('/')
    fill_in('name1', :with => 'Franz')
    fill_in('name2', :with => 'Teacher')
    fill_in('address', :with => '123 programming st')
    fill_in('job', :with => 'Writer')
    click_button('Go!')
    expect(page).to have_content ('W')
  end
end
