#-------------------------------------------------------------#
# Test for the Watir controller.
#
# Purpose: to demonstrate the following Watir functionality:
#   * entering text into a text field,
#   * clicking a button,
#   * checking to see if a page contains text.
# Test will search Blog for the defined methods Ruby book.
#-------------------------------------------------------------#

# the Watir controller
require "rubygems"
require "watir"
require 'watir-webdriver'
# set a variable
test_site = "http://localhost:3000/"
new_job = "http://localhost:3000/jobs/new"

# open a browser
browser = Watir::Browser.new:chrome

Given(/^I want to create access the test site$/) do 
	browser.goto test_site
end

When(/^I want to create a new job$/) do
browser.link(:href, "/jobs/new").click
end


When(/^I am able to create a new job title$/) do
browser.text_field(:id => "job_title").when_present.set "job title"
end

Then(/^I am able to create a new job description$/) do
 browser.text_field(:id => "job_description").when_present.set "job description"
end



Then(/^I enter a company name$/) do 
browser.text_field(:id => "job_company").when_present.set "company name "
end

Then(/^I enter a url$/)do
browser.text_field(:id => "job_url").when_present.set "www.url.com"
end

Then(/^I click the button to submit$/)do
browser.button(:class => 'btn').when_present.click
end

