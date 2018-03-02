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

describe 'the store creation path', {:type => :feature} do
  it 'takes the user to a page where they can see stores and edit them' do
    visit '/'
    click_link('Add a New Show Store Location')
    fill_in('Store Name', :with => 'adidas outlet')
    click_button('Add Store')
    expect(page).to have_content('Adidas Outlet')
    click_link('Adidas Outlet')
    click_link('Edit Store name')
    fill_in('Edit your store:', :with => 'nike outlet')
    click_button('Update')
    expect(page).to have_content('Home Stores Brands Keep Track of Your Stores and Brands Add a New Show Store Location Add a New Shoe Brand')
  end
end

describe 'the brand creation path', {:type => :feature} do
  it 'the user starts on the home page' do
    visit '/'
    click_link('Add a New Shoe Brand')
    expect(page).to have_content()
  end
end
