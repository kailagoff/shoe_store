require "capybara/rspec"
require "./app"
require "pry"
require 'spec_helper'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the store creation path', {:type => :feature} do
  it 'the user starts on the home page' do
    visit '/'
    click_link('Add a New Show Store Location')
    expect(page).to have_content()
  end
end

describe 'the store creation path', {:type => :feature} do
  it 'takes the user to a form where they can create a store' do
    visit '/'
    click_link('Add a New Show Store Location')
    fill_in('Store Name', :with => 'adidas outlet')
    click_button('Add Store')
    expect(page).to have_content('Adidas Outlet')
  end
end
