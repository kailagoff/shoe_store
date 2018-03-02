require "capybara/rspec"
require "./app"
require "pry"
require 'spec_helper'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the store creation path', {:type => :feature} do
  it 'the user starts on the home page where they can create a store' do
    visit '/'
    click_link('Add a New Show Store Location')
    expect(page).to have_content()
  end
end
