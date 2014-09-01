require 'spec_helper'
describe "Static Pages" do



  ##---------------
  ## Home Page
  ##---------------
  describe "Home Page" do
=begin
    it "should have the content 'Home'" do
      visit '/static_pages/home'
      page.should have_content('Home')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.source.should have_selector("title", text: "Ruby on Rails Tutorial Sample App | Home")
    end
=end
    it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        page.should have_content('Sample App')
    end

    it "should have the base title" do
        visit '/static_pages/home'
        page.source.should have_selector("title", text: "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
        visit '/static_pages/home'
        page.source.should_not have_selector("title", text: '| Home')
    end
  end



  ##---------------
  ## Help Page
  ##---------------
  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.source.should have_selector("title", text: "Ruby on Rails Tutorial Sample App | Help")
    end
  end



  ##---------------
  ## About Page
  ##---------------
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.source.should have_selector("title", text: "Ruby on Rails Tutorial Sample App | About Us")
    end
  end



end
